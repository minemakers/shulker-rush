# @dummy
# @environment sr:unit
# @max_ticks 60
# The shulker item matches the shulker being carried.
await entity @s[gamemode=adventure]
scoreboard players set #shulker_type sr.var 2
loot give @s loot sr:block/shulker
assert items entity @s container.* minecraft:cyan_shulker_box
scoreboard players set #shulker_type sr.var 4
loot give @s loot sr:block/shulker
assert items entity @s container.* minecraft:yellow_shulker_box
