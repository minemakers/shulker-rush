# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:block/end_stone generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:block/end_stone
assert items entity @s container.* *
