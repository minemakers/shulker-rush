fill 1019 258 33 993 253 21 air

summon minecraft:marker 1056 244 31 {Tags:["chest"]}
summon minecraft:marker 956 244 31 {Tags:["chest"]}

execute positioned 1057 245 32 run function game:resources/prefabs/shops/variants/blue
execute positioned 955 245 32 run function game:resources/prefabs/shops/variants/yellow

execute positioned 1041 242 27 run function game:resources/prefabs/upgraders/variants/blue
execute positioned 971 242 27 run function game:resources/prefabs/upgraders/variants/yellow

execute positioned 1043 242 35 run function game:resources/prefabs/shulkers/variants/blue
execute positioned 969 242 35 run function game:resources/prefabs/shulkers/variants/yellow

execute positioned 1006.5 237 47.5 run function game:resources/prefabs/spawners/crystal
execute positioned 1006.5 260 -5.5 run function game:resources/prefabs/spawners/crystal
execute positioned 1053.5 243 27.5 run function game:resources/prefabs/spawners/variants/blue
execute positioned 959.5 243 27.5 run function game:resources/prefabs/spawners/variants/yellow

summon minecraft:block_display 1059.5 245.7 17.5 {Tags:["spawnpoint","blue"],Rotation:[0.0f,10.0f]}
summon minecraft:block_display 953.5 245.7 17.5 {Tags:["spawnpoint","yellow"],Rotation:[0.0f,10.0f]}

# Spawn protection
fill 1059 244 17 1059 247 20 minecraft:moving_piston replace minecraft:air
fill 953 244 17 953 247 20 minecraft:moving_piston replace minecraft:air
