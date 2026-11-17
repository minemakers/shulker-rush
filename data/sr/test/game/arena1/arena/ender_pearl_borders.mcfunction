# @environment sr:game/arena1
# @max_ticks 300
# Ender pearls are stopped by barriers in front of, behind and above them.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy pitcher spawn
team join sr.blue pitcher
execute as pitcher run function sr:system/player/init
execute as pitcher run function sr:system/player/respawn
await entity @a[name=pitcher,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 70
setblock 1045 243 22 minecraft:barrier
summon minecraft:ender_pearl 1045.5 243 21.5 {NoGravity:1b,Rotation:[0f,0f]}
await not entity @e[type=minecraft:ender_pearl,x=1045,y=243,z=22,distance=..5]
summon minecraft:ender_pearl 1045.5 243 20.5 {NoGravity:1b,Rotation:[0f,0f]}
await not entity @e[type=minecraft:ender_pearl,x=1045,y=243,z=22,distance=..5]
summon minecraft:ender_pearl 1045.5 243 23.5 {NoGravity:1b,Rotation:[0f,0f]}
await not entity @e[type=minecraft:ender_pearl,x=1045,y=243,z=22,distance=..5]
summon minecraft:ender_pearl 1045.5 243 24.5 {NoGravity:1b,Rotation:[0f,0f]}
await not entity @e[type=minecraft:ender_pearl,x=1045,y=243,z=22,distance=..5]
summon minecraft:ender_pearl 1045.5 242 22.5 {NoGravity:1b,Rotation:[90f,0f]}
await not entity @e[type=minecraft:ender_pearl,x=1045,y=243,z=22,distance=..5]
dummy pitcher leave
