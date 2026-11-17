# Test setup, not shipped with the map: the first arena is selected, with the few blocks the game needs there
# in Ward's empty world (spawn platforms, shops and upgraders), and the default settings.
fill -8 -64 -8 8 -1 8 minecraft:air
fill 1040 241 13 1064 241 40 minecraft:stone
fill 949 241 13 973 241 40 minecraft:stone
fill 1056 244 14 1063 244 21 minecraft:stone
fill 950 244 14 957 244 21 minecraft:stone
setblock 1053 242 27 minecraft:stone
setblock 959 242 27 minecraft:stone
setblock 1057 245 32 minecraft:barrel[facing=west]
setblock 955 245 32 minecraft:barrel[facing=east]
setblock 1041 242 27 minecraft:hopper
setblock 971 242 27 minecraft:hopper

scoreboard players set $arena sr.var 1
scoreboard players reset $countdown sr.var
function sr:resource/config
function sr:resource/lang/en
