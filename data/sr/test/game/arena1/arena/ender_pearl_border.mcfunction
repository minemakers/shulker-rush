# @environment sr:game/arena1
# @max_ticks 300
# Ender pearls cannot fly through the arena border.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy thrower spawn
team join sr.blue thrower
execute as thrower run function sr:system/player/init
execute as thrower run function sr:system/player/respawn
await entity @a[name=thrower,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 70
setblock 1060 245 30 minecraft:barrier
summon minecraft:ender_pearl 1060.5 243 30.5 {NoGravity:1b}
await not entity @e[type=minecraft:ender_pearl,x=1060,y=243,z=30,distance=..4]
dummy thrower leave
