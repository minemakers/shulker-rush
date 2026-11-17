fill 3005 298 22 2979 293 -4 air

summon minecraft:marker 2922 231 3 {Tags:["sr.chest"]}
summon minecraft:marker 2998 231 -61 {Tags:["sr.chest"]}
summon minecraft:marker 3062 231 15 {Tags:["sr.chest"]}
summon minecraft:marker 2986 231 79 {Tags:["sr.chest"]}

execute positioned 2922 232 11 run function sr:resource/prefab/shop/variant/red
execute positioned 2990 232 -61 run function sr:resource/prefab/shop/variant/blue
execute positioned 3062 232 7 run function sr:resource/prefab/shop/variant/green
execute positioned 2994 232 79 run function sr:resource/prefab/shop/variant/yellow

execute positioned 2922 234 -1 run function sr:resource/prefab/upgrader/variant/red
execute positioned 3002 234 -61 run function sr:resource/prefab/upgrader/variant/blue
execute positioned 3062 234 19 run function sr:resource/prefab/upgrader/variant/green
execute positioned 2982 234 79 run function sr:resource/prefab/upgrader/variant/yellow

execute positioned 3005.5 232 22.5 rotated -45 0 run function sr:resource/prefab/merchant/variant/default
execute positioned 2979.5 232 22.5 rotated 45 0 run function sr:resource/prefab/merchant/variant/default
execute positioned 2979.5 232 -3.5 rotated 135 0 run function sr:resource/prefab/merchant/variant/default
execute positioned 3005.5 232 -3.5 rotated -135 0 run function sr:resource/prefab/merchant/variant/default

execute if entity @a[team=sr.red,limit=1] positioned 2922 231 16 run function sr:resource/prefab/shulker/variant/red
execute if entity @a[team=sr.blue,limit=1] positioned 2985 231 -61 run function sr:resource/prefab/shulker/variant/blue
execute if entity @a[team=sr.green,limit=1] positioned 3062 231 2 run function sr:resource/prefab/shulker/variant/green
execute if entity @a[team=sr.yellow,limit=1] positioned 2999 231 79 run function sr:resource/prefab/shulker/variant/yellow

execute positioned 2992.5 248 9.5 run function sr:resource/prefab/spawner/crystal
execute positioned 2992.5 227 9.5 run function sr:resource/prefab/spawner/crystal
execute if entity @a[team=sr.red,limit=1] positioned 2922.5 231 7.5 run function sr:resource/prefab/spawner/variant/red
execute if entity @a[team=sr.blue,limit=1] positioned 2994.5 231 -60.5 run function sr:resource/prefab/spawner/variant/blue
execute if entity @a[team=sr.green,limit=1] positioned 3062.5 231 11.5 run function sr:resource/prefab/spawner/variant/green
execute if entity @a[team=sr.yellow,limit=1] positioned 2990.5 231 79.5 run function sr:resource/prefab/spawner/variant/yellow

execute if entity @a[team=sr.red,limit=1] run summon minecraft:block_display 2900 236 15 {Tags:["sr.spawnpoint","sr.red"],Rotation:[270.0f,10.0f]}
execute if entity @a[team=sr.blue,limit=1] run summon minecraft:block_display 2986 236 -83 {Tags:["sr.spawnpoint","sr.blue"],Rotation:[0.0f,10.0f]}
execute if entity @a[team=sr.green,limit=1] run summon minecraft:block_display 3084.5 236 3.5 {Tags:["sr.spawnpoint","sr.green"],Rotation:[90.0f,10.0f]}
execute if entity @a[team=sr.yellow,limit=1] run summon minecraft:block_display 2998.5 236 101.5 {Tags:["sr.spawnpoint","sr.yellow"],Rotation:[180.0f,10.0f]}

fill 2985 234 -84 2987 235 -79 minecraft:moving_piston replace minecraft:air
fill 2899 234 16 2904 235 14 minecraft:moving_piston replace minecraft:air
fill 2999 234 102 2997 235 97 minecraft:moving_piston replace minecraft:air
fill 3085 234 2 3080 235 4 minecraft:moving_piston replace minecraft:air

setblock 2986 239 -83 minecraft:fire
setblock 2900 239 15 minecraft:fire
setblock 2998 239 101 minecraft:fire
setblock 3084 239 3 minecraft:fire
