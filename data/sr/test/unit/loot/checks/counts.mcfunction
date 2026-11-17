# @dummy
# @environment sr:unit
# @max_ticks 60
# Stack sizes come from the config: a dropped modifier would give a single item.
await entity @s[gamemode=adventure]
loot give @s loot sr:item/arrow
assert result 10 run clear @s minecraft:arrow 0
loot give @s loot sr:block/oak_planks
assert result 12 run clear @s minecraft:oak_planks 0
loot give @s loot sr:block/end_stone
assert result 4 run clear @s minecraft:end_stone 0
loot give @s loot sr:block/scaffolding
assert result 6 run clear @s minecraft:scaffolding 0
loot give @s loot sr:block/ancient_debris
assert result 3 run clear @s minecraft:ancient_debris 0
