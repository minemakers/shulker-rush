# @environment sr:lobby
# @max_ticks 100
# Players spawn where the state of the game and the arena say.
await loaded 5000 216 0
dummy walker spawn
await entity @a[name=walker,gamemode=adventure]
# Everything below runs in one tick and puts the state back: other tests share this lobby.
scoreboard players set $arena sr.var 2
scoreboard players set $status sr.var 1
execute as walker run function sr:system/player/spawn
assert entity @a[name=walker,x=2026,y=229,z=-1,distance=..3]
scoreboard players set $status sr.var 2
execute as walker run function sr:system/player/spawn
assert entity @a[name=walker,x=2071,y=239,z=-1,distance=..3]
scoreboard players set $arena sr.var 3
execute as walker run function sr:system/player/spawn
assert entity @a[name=walker,x=3017,y=254,z=-14,distance=..3]
scoreboard players set $status sr.var 1
execute as walker run function sr:system/player/spawn
assert entity @a[name=walker,x=2992,y=294,z=9,distance=..3]
scoreboard players set $arena sr.var 1
scoreboard players set $status sr.var 0
execute as walker run function sr:system/player/spawn
assert entity @a[name=walker,x=5000,y=216,z=0,distance=..3]
dummy walker leave
