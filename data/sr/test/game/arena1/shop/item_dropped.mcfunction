# @environment sr:game/arena1
# @max_ticks 300
# A shop item thrown out of the menu is removed from the ground, and a normal item is left alone.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy dropper spawn
team join sr.yellow dropper
execute as dropper run function sr:system/player/init
execute as dropper run function sr:system/player/respawn
await entity @a[name=dropper,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
summon minecraft:item 960 243 30 {Item:{id:"minecraft:stone",count:1,components:{"minecraft:custom_data":{shop_id:{}}}},Tags:["sr.probe"]}
summon minecraft:item 960 243 30 {Item:{id:"minecraft:dirt",count:1},Tags:["sr.keep"]}
tp dropper 956.5 242 32.5
await delay 2
item replace block 955 245 32 container.26 with minecraft:stone 1
await not entity @e[type=minecraft:item,tag=sr.probe]
assert entity @e[type=minecraft:item,tag=sr.keep]
dummy dropper leave
