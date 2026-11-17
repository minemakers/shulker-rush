# @dummy
# @environment sr:unit
# @max_ticks 60
# The loot table sr:content/trade/crystal/buy generates its items.
await entity @s[gamemode=adventure]
assert result 1.. run loot give @s loot sr:content/trade/crystal/buy
assert items entity @s container.* *
