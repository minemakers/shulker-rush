# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:item/iron generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:item/iron
assert items entity @s container.* *
