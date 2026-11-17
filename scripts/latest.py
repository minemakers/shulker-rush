"""Find the newest Minecraft release that Ward can test, and compare it to the pinned one."""

import json
import os
import sys
import urllib.request
from pathlib import Path

WARD = "https://api.modrinth.com/v2/project/ward/version"
VERSIONS = "https://raw.githubusercontent.com/misode/mcmeta/refs/heads/summary/versions/data.json"
USER_AGENT = "minemakers/shulker-rush (github.com/minemakers/shulker-rush)"
PINNED = Path(__file__).resolve().parent.parent / ".minecraft-version"


def fetch(url: str):
    request = urllib.request.Request(url, headers={"User-Agent": USER_AGENT})
    with urllib.request.urlopen(request, timeout=30) as response:
        return json.load(response)


def main() -> None:
    current = PINNED.read_text().strip()
    releases = [v for v in fetch(VERSIONS) if v["type"] == "release"]
    supported = {g for v in fetch(WARD) for g in v["game_versions"]}

    ids = [v["id"] for v in releases]
    if current not in ids:
        sys.exit(f"Pinned version {current} is not a known Minecraft release")

    newer = [v for v in releases[: ids.index(current)] if v["id"] in supported]
    if forced := os.environ.get("TARGET_VERSION", "").strip():
        if forced not in ids or forced not in supported:
            sys.exit(f"{forced} is not a Minecraft release that Ward supports")
        newer = [releases[ids.index(forced)]] if forced != current else []
    latest = newer[0] if newer else releases[ids.index(current)]

    outputs = {
        "current": current,
        "latest": latest["id"],
        "pack_format": str(latest["data_pack_version"]),
        "outdated": str(bool(newer)).lower(),
    }

    unsupported = [
        v["id"] for v in releases[: ids.index(current)] if v["id"] not in supported
    ]
    if unsupported:
        print(
            f"Released but not testable with Ward yet: {', '.join(unsupported)}",
            file=sys.stderr,
        )

    lines = "".join(f"{key}={value}\n" for key, value in outputs.items())
    if target := os.environ.get("GITHUB_OUTPUT"):
        with open(target, "a") as file:
            file.write(lines)
    print(lines, end="")


if __name__ == "__main__":
    main()
