# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:content/trade/gold/sell generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:content/trade/gold/sell
assert items entity @s container.* *
