# Test setup, not shipped with the map: the second arena is selected, with the few blocks the game needs there
# in Ward's empty world (spawn platforms, shops and upgraders), and the default settings.
fill -8 -64 -8 8 -1 8 minecraft:air
fill 2022 215 -79 2030 215 -72 minecraft:stone
fill 2022 215 71 2030 215 78 minecraft:stone
setblock 2033 210 -51 minecraft:barrel[facing=west]
setblock 2019 210 49 minecraft:barrel[facing=east]
setblock 2018 210 -51 minecraft:hopper
setblock 2034 210 49 minecraft:hopper

scoreboard players set $arena sr.var 2
scoreboard players reset $countdown sr.var
function sr:resource/config
function sr:resource/lang/en
