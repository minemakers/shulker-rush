# @environment sr:game/arena1
# @max_ticks 400
# Resource spawners drop iron and gold, and hand it to a player standing on them.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy collector spawn
team join sr.blue collector
execute as collector run function sr:system/player/init
execute as collector run function sr:system/player/respawn
await entity @a[name=collector,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 70
await entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:raw_iron"}}]
tp collector 1053.5 243 27.5
await items entity collector container.* minecraft:raw_iron
await items entity collector container.* minecraft:raw_gold
dummy collector leave
