# @dummy
# @environment sr:unit
# @max_ticks 60
# Mining scaffolding follows the map's own loot table.
await entity @s[gamemode=adventure]
setblock ~ ~ ~ minecraft:scaffolding
loot give @s mine ~ ~ ~ minecraft:wooden_pickaxe
assert items entity @s container.* minecraft:scaffolding
