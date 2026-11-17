# @environment sr:game/arena1
# @max_ticks 300
# Dying drops the resources a player carries.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy loser spawn
team join sr.yellow loser
execute as loser run function sr:system/player/init
execute as loser run function sr:system/player/respawn
await entity @a[name=loser,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
loot give loser loot sr:item/iron
loot give loser loot sr:item/gold
assert items entity loser container.* minecraft:raw_iron
kill loser
await entity @a[name=loser,gamemode=spectator]
assert not items entity loser container.* minecraft:raw_iron
assert not items entity loser container.* minecraft:raw_gold
assert entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_iron"}}]
assert entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_gold"}}]
dummy loser leave
