# @dummy
# @environment sr:unit
# @max_ticks 60
# Mining ancient debris follows the map's own loot table.
await entity @s[gamemode=adventure]
setblock ~ ~ ~ minecraft:ancient_debris
loot give @s mine ~ ~ ~ minecraft:diamond_pickaxe
assert items entity @s container.* minecraft:ancient_debris
