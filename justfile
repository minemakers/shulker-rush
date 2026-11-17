# Shulker Rush commands: run `just` to list them. CI runs these same commands.
# Needs uv, and for `world`/`upgrade` also Java and mcwpack (`cargo install mcwpack`).
# Recipes run with PowerShell on Windows and sh elsewhere, so they stay plain commands.
set windows-shell := ["powershell.exe", "-NoLogo", "-NoProfile", "-Command"]

# The Minecraft version the map targets. Override it for one command: `just version=26.4 test`
version := trim(read(justfile_directory() / ".minecraft-version"))
# Always the latest beet and mcward.
beet := "uvx --with 'mcward[beet]' beet"
python := "uv run --no-project"

[private]
default:
    @just --list --unsorted

# Build the release datapack into build/ (without the tests)
build:
    {{beet}}

# Run the tests; extra arguments go to Ward: a selector ("sr:lobby/*"), --coverage, --watch...
test *args:
    {{beet}} test -v {{version}} {{args}}

# Write a line-by-line coverage report to coverage.html
coverage:
    {{beet}} test -v {{version}} --coverage-report html

# Upgrade world/ to the target version if it is older, and clean it (also after editing the map in-game).
# `just world --force` runs the server even when the world is already on that version.
world *args:
    {{python}} scripts/world.py {{version}} {{args}}

# Move the map to another Minecraft version: pin it, upgrade the world, run the tests
upgrade new_version:
    {{python}} scripts/world.py {{new_version}} --pin
    just test

# Build the release archives into release/ (the world with the datapack, and a Realms variant)
package: build
    {{python}} scripts/package.py

# Upload release/shulker-rush.zip to CurseForge (after `just package`); needs $CURSEFORGE_TOKEN.
# Extra arguments: --notes FILE (markdown release notes), --dry-run (print, send nothing)
curseforge tag *args:
    {{python}} scripts/curseforge.py release/shulker-rush.zip {{tag}} {{args}}
