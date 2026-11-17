# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:block/red_shulker generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:block/red_shulker
assert items entity @s container.* *
