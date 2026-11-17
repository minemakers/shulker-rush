import json
import urllib.request

from beet import Context, Function, FunctionTag  # ty: ignore[import-not-found]
from beet.contrib.autosave import Autosave  # ty: ignore[import-not-found]

TEST_FOLDERS = {"test", "test_environment", "test_instance"}
VERSIONS = "https://raw.githubusercontent.com/misode/mcmeta/refs/heads/summary/versions/data.json"


def beet_default(ctx: Context):
    yield

    version = (ctx.directory / ".minecraft-version").read_text().strip()
    ctx.data.pack_format = None
    ctx.data.min_format = ctx.data.max_format = pack_format(ctx, version)

    if any(
        file_type.__name__ == "TestFunction" for file_type in ctx.data.extend_namespace
    ):
        forceload(ctx)
        ctx.inject(Autosave).output_handlers.clear()
        return

    for namespace in ctx.data.values():
        for file_type, container in namespace.items():
            if file_type.scope[0] in TEST_FOLDERS:
                container.clear()
    for name in [
        name for name in ctx.data.functions if name.split(":")[1].startswith("test/")
    ]:
        del ctx.data.functions[name]


def forceload(ctx: Context) -> None:
    areas = ctx.meta.get("forceload", [])
    namespace = next(name for name in ctx.data if name != "minecraft")
    function = f"{namespace}:test/forceload"
    ctx.data[function] = Function([f"forceload add {area}" for area in areas])
    load = ctx.data.function_tags.get("minecraft:load")
    values = list(load.data["values"]) if load else []
    ctx.data.function_tags["minecraft:load"] = FunctionTag(
        {"values": [*values, function]}
    )


def pack_format(ctx: Context, version: str) -> int | tuple[int, int]:
    known = ctx.data.pack_format_registry.get(version)
    if known is not None:
        return known
    with urllib.request.urlopen(VERSIONS, timeout=30) as response:
        for entry in json.load(response):
            if entry["id"] == version:
                return entry["data_pack_version"], entry.get(
                    "data_pack_version_minor", 0
                )
    raise ValueError(f"Unknown Minecraft version in .minecraft-version: {version}")
