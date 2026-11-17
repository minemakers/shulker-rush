# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:item/ender_pearl generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:item/ender_pearl
assert items entity @s container.* *
