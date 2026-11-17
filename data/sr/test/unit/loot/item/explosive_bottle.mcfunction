# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:item/explosive_bottle generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:item/explosive_bottle
assert items entity @s container.* *
