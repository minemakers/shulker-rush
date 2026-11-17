# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:item/firework_rocket generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:item/firework_rocket
assert items entity @s container.* *
