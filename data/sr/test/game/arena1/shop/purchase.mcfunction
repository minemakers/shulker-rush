# @environment sr:game/arena1
# @max_ticks 300
# Taking an item out of the shop buys it: the price is paid and the shop is restocked.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy buyer spawn
team join sr.blue buyer
execute as buyer run function sr:system/player/init
execute as buyer run function sr:system/player/respawn
await entity @a[name=buyer,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 70
give buyer minecraft:raw_gold 7
tp buyer 1055.5 242 32.5
await delay 2
item replace entity buyer player.cursor from block 1057 245 32 container.2
item replace block 1057 245 32 container.2 with minecraft:air
await items entity buyer container.* minecraft:iron_sword
assert result 1 run clear buyer minecraft:raw_gold 0
assert not items entity buyer player.cursor *
assert items block 1057 245 32 container.2 *[minecraft:custom_data~{shop_id:{}}]
dummy buyer leave
