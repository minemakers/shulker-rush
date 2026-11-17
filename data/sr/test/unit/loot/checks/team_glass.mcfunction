# @dummy
# @environment sr:unit
# @max_ticks 60
# Stained glass comes in the buyer's team color.
await entity @s[gamemode=adventure]
team join sr.blue @s
loot give @s loot sr:block/stained_glass
assert result 16 run clear @s minecraft:cyan_stained_glass 0
assert not items entity @s container.* minecraft:red_stained_glass
