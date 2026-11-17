# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:content/fast_travel generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:content/fast_travel
assert items entity @s container.* *
