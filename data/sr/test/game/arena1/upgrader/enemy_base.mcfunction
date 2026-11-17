# @environment sr:game/arena1
# @max_ticks 300
# The upgrader of another team refuses to sell.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy intruder spawn
team join sr.blue intruder
execute as intruder run function sr:system/player/init
execute as intruder run function sr:system/player/respawn
await entity @a[name=intruder,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 5
data modify storage sr:core _ set value []
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run loot replace entity intruder player.cursor loot sr:content/upgrader/sharpened_sword
execute as intruder at @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/purchase/handle
assert score #error sr.var matches 5
assert score intruder sr.sword_level matches 0
dummy intruder leave
