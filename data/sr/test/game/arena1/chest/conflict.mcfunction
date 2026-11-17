# @environment sr:game/arena1
# @max_ticks 300
# When two teammates change the team chest in the same tick, the second one is put back as they were.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy first spawn
team join sr.yellow first
execute as first run function sr:system/player/init
execute as first run function sr:system/player/respawn
await entity @a[name=first,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
dummy second spawn
await entity @a[name=second,gamemode=spectator,team=sr.players]
team join sr.yellow second
gamemode adventure second
scoreboard players set second sr.player_id 99
tp first 956.5 242 32.5
tp second 956.5 242 31.5
give first minecraft:stone 1
give second minecraft:stone 1
give second minecraft:raw_gold 3
await items entity first armor.body *
await items entity second armor.body *
await delay 3
item replace entity first enderchest.0 with minecraft:raw_iron 5
clear second minecraft:raw_gold
item replace entity second enderchest.1 with minecraft:raw_gold 3
# first joined before second, so their change wins and second gets the gold back in the inventory.
await items entity second enderchest.0 minecraft:raw_iron
await items entity second container.* minecraft:raw_gold
assert result 3 run clear second minecraft:raw_gold 0
await not entity @a[tag=sr.lock]
scoreboard players set #count sr.var -1
execute store result score #count sr.var if items entity first enderchest.1 *
assert score #count sr.var matches 0
assert items entity first container.* minecraft:stone
assert items entity second container.* minecraft:stone
# Dropping the item held on the cursor changes no inventory slot: the statistic refreshes the snapshot.
scoreboard players set second sr.drop 1
await not score second sr.drop matches 1..
dummy second leave
dummy first leave
