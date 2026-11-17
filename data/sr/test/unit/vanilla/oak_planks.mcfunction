# @dummy
# @environment sr:unit
# @max_ticks 60
# Mining oak planks follows the map's own loot table.
await entity @s[gamemode=adventure]
setblock ~ ~ ~ minecraft:oak_planks
loot give @s mine ~ ~ ~ minecraft:wooden_pickaxe
assert items entity @s container.* minecraft:oak_planks
