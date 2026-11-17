# /// script
# requires-python = ">=3.10"
# ///
"""Package the release archives from build/ and world/ into release/."""

import shutil
import sys
import zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
PACK = ROOT / "build" / "shulker-rush"
WORLD = ROOT / "world"
RELEASE = ROOT / "release"
WORLD_NAME = "Shulker Rush II"
TEST_PARTS = {"test", "test_environment", "test_instance"}


def check_no_tests() -> None:
    leaks = [
        path.relative_to(PACK)
        for path in PACK.rglob("*")
        if TEST_PARTS & set(path.relative_to(PACK).parts)
        or (path.parent.name == "function" and path.name.startswith("test"))
    ]
    if leaks:
        sys.exit(
            "The built pack contains test files:\n"
            + "\n".join(f"  {leak}" for leak in leaks)
        )


def add_tree(archive: zipfile.ZipFile, source: Path, prefix: str) -> None:
    for path in sorted(source.rglob("*")):
        if path.is_file():
            name = path.relative_to(source).as_posix()
            archive.write(path, f"{prefix}/{name}" if prefix else name)


def main() -> None:
    if not (PACK / "pack.mcmeta").exists():
        sys.exit(
            "No built pack in build/shulker-rush: run `beet` (or `just build`) first"
        )
    check_no_tests()

    shutil.rmtree(RELEASE, ignore_errors=True)
    RELEASE.mkdir()
    datapack = RELEASE / "shulker-rush-datapack.zip"
    with zipfile.ZipFile(
        datapack, "w", zipfile.ZIP_DEFLATED, compresslevel=9
    ) as archive:
        add_tree(archive, PACK, "")

    for name, realms in (
        ("shulker-rush.zip", False),
        ("shulker-rush-realms.zip", True),
    ):
        with zipfile.ZipFile(
            RELEASE / name, "w", zipfile.ZIP_DEFLATED, compresslevel=9
        ) as archive:
            add_tree(archive, WORLD, WORLD_NAME)
            if realms:
                add_tree(archive, PACK, f"{WORLD_NAME}/datapacks/shulker-rush")
            else:
                archive.write(datapack, f"{WORLD_NAME}/datapacks/shulker-rush.zip")
        print(f"release/{name}")
    datapack.unlink()


if __name__ == "__main__":
    main()
