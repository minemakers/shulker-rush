# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:item/gold generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:item/gold
assert items entity @s container.* *
