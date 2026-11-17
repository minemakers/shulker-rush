# Test setup, not shipped with the map: the third arena is selected, with the few blocks the game needs there
# in Ward's empty world (spawn platforms, shops and upgraders), and the default settings.
fill -8 -64 -8 8 -1 8 minecraft:air
fill 2906 230 0 2938 230 32 minecraft:stone
fill 2898 235 13 2902 235 17 minecraft:stone
setblock 2922 232 11 minecraft:barrel[facing=north]
setblock 2922 234 -1 minecraft:hopper
fill 2969 230 -77 3001 230 -45 minecraft:stone
fill 2984 235 -85 2988 235 -81 minecraft:stone
setblock 2990 232 -61 minecraft:barrel[facing=south]
setblock 3002 234 -61 minecraft:hopper
fill 3046 230 -14 3078 230 18 minecraft:stone
fill 3082 235 1 3086 235 5 minecraft:stone
setblock 3062 232 7 minecraft:barrel[facing=west]
setblock 3062 234 19 minecraft:hopper
fill 2983 230 63 3015 230 95 minecraft:stone
fill 2996 235 99 3000 235 103 minecraft:stone
setblock 2994 232 79 minecraft:barrel[facing=east]
setblock 2982 234 79 minecraft:hopper

scoreboard players set $arena sr.var 3
scoreboard players reset $countdown sr.var
function sr:resource/config
function sr:resource/lang/en
