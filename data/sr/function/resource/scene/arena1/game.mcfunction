fill 1019 258 33 993 253 21 air

summon minecraft:marker 1056 244 31 {Tags:["sr.chest"]}
summon minecraft:marker 956 244 31 {Tags:["sr.chest"]}

execute positioned 1057 245 32 run function sr:resource/prefab/shop/variant/blue
execute positioned 955 245 32 run function sr:resource/prefab/shop/variant/yellow

execute positioned 1041 242 27 run function sr:resource/prefab/upgrader/variant/blue
execute positioned 971 242 27 run function sr:resource/prefab/upgrader/variant/yellow

execute positioned 1043 242 35 run function sr:resource/prefab/shulker/variant/blue
execute positioned 969 242 35 run function sr:resource/prefab/shulker/variant/yellow

execute positioned 1006.5 237 47.5 run function sr:resource/prefab/spawner/crystal
execute positioned 1006.5 260 -5.5 run function sr:resource/prefab/spawner/crystal
execute positioned 1053.5 243 27.5 run function sr:resource/prefab/spawner/variant/blue
execute positioned 959.5 243 27.5 run function sr:resource/prefab/spawner/variant/yellow

summon minecraft:block_display 1059.5 245.7 17.5 {Tags:["sr.spawnpoint","sr.blue"],Rotation:[0.0f,10.0f]}
summon minecraft:block_display 953.5 245.7 17.5 {Tags:["sr.spawnpoint","sr.yellow"],Rotation:[0.0f,10.0f]}

fill 1059 244 17 1059 247 20 minecraft:moving_piston replace minecraft:air
fill 953 244 17 953 247 20 minecraft:moving_piston replace minecraft:air
