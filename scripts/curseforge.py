"""Upload a release archive to the Shulker Rush II project on CurseForge."""

import argparse
import json
import os
import sys
import urllib.request
import uuid
from pathlib import Path
from typing import Any

API = "https://minecraft.curseforge.com/api"
PROJECT_ID = 842723  # https://www.curseforge.com/minecraft/worlds/shulker-rush-2
PROJECT_NAME = "Shulker Rush II"
REPOSITORY = "https://github.com/minemakers/shulker-rush"
USER_AGENT = "minemakers/shulker-rush (github.com/minemakers/shulker-rush)"
PINNED = Path(__file__).resolve().parent.parent / ".minecraft-version"


def request(
    path: str, token: str, data: bytes | None = None, content_type: str = ""
) -> Any:
    headers = {"User-Agent": USER_AGENT, "X-Api-Token": token}
    if content_type:
        headers["Content-Type"] = content_type
    req = urllib.request.Request(f"{API}{path}", data=data, headers=headers)
    with urllib.request.urlopen(req, timeout=120) as response:
        return json.load(response)


def version_id(version: str, token: str) -> int:
    """CurseForge's ID for a Minecraft version (not a Java or mod loader version)."""
    types = request("/game/version-types", token)
    minecraft = {t["id"] for t in types if str(t["slug"]).startswith("minecraft-")}
    for entry in request("/game/versions", token):
        if entry["name"] == version and entry["gameVersionTypeID"] in minecraft:
            return entry["id"]
    sys.exit(f"CurseForge does not know Minecraft {version} yet")


def multipart(metadata: dict, file: Path) -> tuple[bytes, str]:
    boundary = uuid.uuid4().hex
    parts = [
        f'--{boundary}\r\nContent-Disposition: form-data; name="metadata"\r\n'
        f"Content-Type: application/json\r\n\r\n{json.dumps(metadata)}\r\n".encode(),
        f'--{boundary}\r\nContent-Disposition: form-data; name="file"; filename="{file.name}"\r\n'
        "Content-Type: application/zip\r\n\r\n".encode(),
        file.read_bytes(),
        f"\r\n--{boundary}--\r\n".encode(),
    ]
    return b"".join(parts), f"multipart/form-data; boundary={boundary}"


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("file", type=Path, help="the archive to upload")
    parser.add_argument(
        "tag", help="the release tag, used in the file name (e.g. v2.3.2)"
    )
    parser.add_argument(
        "--notes", type=Path, help="markdown file with the release notes"
    )
    parser.add_argument(
        "--dry-run", action="store_true", help="print the upload, send nothing"
    )
    args = parser.parse_args()

    if not args.file.is_file():
        sys.exit(f"{args.file} does not exist: run `just package` first")
    version = PINNED.read_text().strip()
    token = os.environ.get("CURSEFORGE_TOKEN", "")
    if not token and not args.dry_run:
        sys.exit("CURSEFORGE_TOKEN is not set")

    notes = args.notes.read_text(encoding="utf-8").strip() if args.notes else ""
    footer = f"For Minecraft {version}. [{args.tag} on GitHub]({REPOSITORY}/releases/tag/{args.tag})"
    metadata = {
        "displayName": f"{PROJECT_NAME} - {args.tag}",
        "changelog": f"{notes}\n\n{footer}" if notes else footer,
        "changelogType": "markdown",
        "gameVersions": [version_id(version, token)]
        if token
        else [f"<id of {version}>"],
        "releaseType": "release",
    }
    if args.dry_run:
        print(
            f"Would upload {args.file} ({args.file.stat().st_size} bytes) to project {PROJECT_ID}:"
        )
        print(json.dumps(metadata, indent=2))
        return

    body, content_type = multipart(metadata, args.file)
    result = request(f"/projects/{PROJECT_ID}/upload-file", token, body, content_type)
    print(f"Uploaded {metadata['displayName']} to CurseForge (file {result['id']})")


if __name__ == "__main__":
    main()
