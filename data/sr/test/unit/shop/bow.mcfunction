# @dummy
# @environment sr:unit
# @max_ticks 60
# The shop sells bow: the price is paid and the item is received.
await entity @s[gamemode=adventure]
team join sr.blue @s
give @s minecraft:raw_iron 64
give @s minecraft:raw_gold 64
give @s minecraft:amethyst_shard 64
loot replace entity @s player.cursor loot sr:content/shop/bow
data modify storage sr:core _ set value []
function sr:system/shop/purchase/handle
assert score #error sr.var matches 0
assert not items entity @s player.cursor *
assert items entity @s container.* minecraft:bow
execute store result score #left sr.var if items entity @s container.* #sr:currency
assert score #left sr.var matches 1..191
# Buying it again without money is refused.
clear @s #sr:currency
loot replace entity @s player.cursor loot sr:content/shop/bow
data modify storage sr:core _ set value []
function sr:system/shop/purchase/handle
assert score #error sr.var matches 1..2
