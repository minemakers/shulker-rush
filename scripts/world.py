# /// script
# requires-python = ">=3.10"
# ///
"""Bring the world save to the pinned Minecraft version and clean it."""

import gzip
import hashlib
import io
import json
import os
import re
import shutil
import struct
import subprocess
import sys
import tempfile
import threading
import urllib.request
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
WORLD = ROOT / "world"
VERSIONS = "https://raw.githubusercontent.com/misode/mcmeta/refs/heads/summary/versions/data.json"
MANIFEST = "https://piston-meta.mojang.com/mc/game/version_manifest_v2.json"
USER_AGENT = "minemakers/shulker-rush (github.com/minemakers/shulker-rush)"
SERVER_TIMEOUT = 15 * 60
FAKE_CLOCK = "@9999-01-01 12:00:00"
LEGACY_FOLDERS = {"region", "entities", "poi"}

USAGE = """usage: world.py [VERSION] [--pin] [--force]   bring world/ to VERSION (default: .minecraft-version)
       world.py java [VERSION]                print the Java version VERSION's server needs

  --pin    also write VERSION to .minecraft-version
  --force  run the server even when the world is already on VERSION"""

PROPERTIES = """\
level-name=world
gamemode=adventure
difficulty=easy
online-mode=false
spawn-protection=0
view-distance=2
simulation-distance=2
"""


def fetch(url: str) -> bytes:
    request = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(request, timeout=60) as response:
        return response.read()


def pinned_version() -> str:
    return (ROOT / ".minecraft-version").read_text().strip()


def mojang_info(version: str) -> dict:
    for entry in json.loads(fetch(MANIFEST))["versions"]:
        if entry["id"] == version:
            return json.loads(fetch(entry["url"]))
    sys.exit(f"Unknown Minecraft version: {version}")


def data_version(version: str) -> int:
    for entry in json.loads(fetch(VERSIONS)):
        if entry["id"] == version:
            return entry["data_version"]
    sys.exit(f"Unknown Minecraft version: {version}")


def save_data_version(world: Path) -> int:
    """The DataVersion int tag of level.dat."""
    level = gzip.decompress((world / "level.dat").read_bytes())
    match = re.search(rb"\x03\x00\x0bDataVersion(.{4})", level, re.DOTALL)
    if not match:
        sys.exit("level.dat has no DataVersion")
    return struct.unpack(">i", match.group(1))[0]


def upgrade(version: str, world: Path, work: Path) -> Path:
    """Upgrade a copy of the world with Mojang's server, return the copy."""
    server = mojang_info(version)["downloads"]["server"]
    jar = fetch(server["url"])
    if hashlib.sha1(jar).hexdigest() != server["sha1"]:
        sys.exit("The downloaded server jar does not match Mojang's checksum")

    shutil.copytree(world, work / "world")
    (work / "server.jar").write_bytes(jar)
    (work / "server.properties").write_text(PROPERTIES)
    (work / "eula.txt").write_text("eula=true\n")

    command = ["java", "-Xmx2G", "-jar", "server.jar", "--forceUpgrade", "--nogui"]
    env = dict(os.environ)
    if shutil.which("faketime"):
        # Only the wall clock is faked: the JVM needs a real monotonic clock to keep ticking.
        command = ["faketime", FAKE_CLOCK, *command]
        env.update(TZ="UTC", FAKETIME_DONT_FAKE_MONOTONIC="1")
    else:
        print(
            "  faketime is not installed: LastPlayed will be reset to today (run upgrades in CI to keep it)"
        )
    process = subprocess.Popen(
        command,
        cwd=work,
        env=env,
        stdin=subprocess.PIPE,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
    )
    timer = threading.Timer(SERVER_TIMEOUT, process.kill)
    timer.start()
    ready = False
    assert process.stdin is not None and process.stdout is not None  # both are PIPE
    for line in process.stdout:
        if ready or not line.startswith("Unpacking"):
            print("  " + line, end="")
        if not ready and "Done (" in line:
            ready = True
            process.stdin.write("stop\n")
            process.stdin.flush()
    code = process.wait()
    timer.cancel()
    if not ready or code != 0:
        sys.exit(
            f"The server did not finish the upgrade (ready: {ready}, exit code: {code})"
        )
    return work / "world"


def files(root: Path) -> set[str]:
    """The paths of every file under root, relative to it."""
    return {p.relative_to(root).as_posix() for p in root.rglob("*") if p.is_file()}


def modern(path: str) -> str:
    """Where a world file lives since Minecraft 26.1, which moved dimensions to dimensions/."""
    for legacy, dimension in (
        ("DIM-1/", "the_nether"),
        ("DIM1/", "the_end"),
        ("", "overworld"),
    ):
        if (
            path.startswith(legacy)
            and path[len(legacy) :].split("/")[0] in LEGACY_FOLDERS
        ):
            return f"dimensions/minecraft/{dimension}/{path[len(legacy) :]}"
    return path


def check_cleaning(source: Path, target: Path, packed: Path) -> None:
    """Refuse a cleaning that loses map regions, and list what mcwpack.yaml left out.

    mcwpack only warns about a file it cannot read and drops it, so a region format it does
    not understand would otherwise commit a world without its terrain. A world upgraded from
    before 26.1 has its regions moved under dimensions/, so they are compared at their new place.
    """
    kept = files(packed)
    lost = sorted(
        f for f in files(target) if f.endswith(".mca") and modern(f) not in kept
    )
    if lost:
        sys.exit(
            "mcwpack dropped region files of the map, world/ is left as is:\n  "
            + "\n  ".join(lost)
        )
    left_out = sorted(files(source) - kept)
    if left_out:
        print("  left out by mcwpack.yaml: " + ", ".join(left_out))


def clean(source: Path, target: Path) -> None:
    """Run mcwpack on source and put the result in target, replacing its content."""
    if not shutil.which("mcwpack"):
        sys.exit("mcwpack is not installed: cargo install mcwpack")
    with tempfile.TemporaryDirectory(prefix="world-packed-") as temp:
        packed = Path(temp) / "world"
        command = [
            "mcwpack",
            str(source),
            "--noprompt",
            "-c",
            str(ROOT / "mcwpack.yaml"),
        ]
        subprocess.run([*command, "-d", str(packed)], check=True)
        check_cleaning(source, target, packed)
        for entry in target.iterdir():
            shutil.rmtree(entry) if entry.is_dir() else entry.unlink()
        for entry in packed.iterdir():
            shutil.move(str(entry), target / entry.name)


def main() -> None:
    if isinstance(sys.stdout, io.TextIOWrapper):
        sys.stdout.reconfigure(line_buffering=True)
    args = sys.argv[1:]
    pin, force = "--pin" in args, "--force" in args
    args = [arg for arg in args if arg not in ("--pin", "--force")]
    match args:
        case ["java", *rest] if len(rest) <= 1:
            major = str(
                mojang_info(rest[0] if rest else pinned_version())["javaVersion"][
                    "majorVersion"
                ]
            )
            print(major)
            if target := os.environ.get("GITHUB_OUTPUT"):
                with open(target, "a") as file:
                    file.write(f"java={major}\n")
            return
        case [] | [_]:
            version = args[0] if args else pinned_version()
        case _:
            sys.exit(USAGE)

    current, wanted = save_data_version(WORLD), data_version(version)
    if current > wanted:
        sys.exit(
            f"The world is newer ({current}) than Minecraft {version} ({wanted}): it cannot be downgraded"
        )
    if pin:
        (ROOT / ".minecraft-version").write_text(version + "\n")
        print(f"Pinned Minecraft {version} in .minecraft-version")

    with tempfile.TemporaryDirectory(prefix="world-") as work:
        source = WORLD
        if current < wanted or force:
            action = "Upgrading" if current < wanted else "Running the server on"
            print(f"{action} the world for Minecraft {version} ({current} -> {wanted})")
            source = upgrade(version, WORLD, Path(work))
        else:
            print(f"The world is already on Minecraft {version}")
        print("Cleaning the world with mcwpack")
        clean(source, WORLD)
    print("Done: review the changes with git status")


if __name__ == "__main__":
    main()
