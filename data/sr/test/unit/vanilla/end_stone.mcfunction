# @dummy
# @environment sr:unit
# @max_ticks 60
# Mining end stone follows the map's own loot table.
await entity @s[gamemode=adventure]
setblock ~ ~ ~ minecraft:end_stone
loot give @s mine ~ ~ ~ minecraft:wooden_pickaxe
assert items entity @s container.* minecraft:end_stone
