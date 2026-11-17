# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:block/ancient_debris generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:block/ancient_debris
assert items entity @s container.* *
