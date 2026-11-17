# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:block/oak_planks generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:block/oak_planks
assert items entity @s container.* *
