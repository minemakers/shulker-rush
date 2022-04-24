fill 3005 298 22 2979 293 -4 air

summon minecraft:marker 2922 231 3 {Tags:["chest"]}
summon minecraft:marker 2998 231 -61 {Tags:["chest"]}
summon minecraft:marker 3062 231 15 {Tags:["chest"]}
summon minecraft:marker 2986 231 79 {Tags:["chest"]}

execute positioned 2922 232 11 run function game:resources/prefabs/shops/variants/red
execute positioned 2990 232 -61 run function game:resources/prefabs/shops/variants/blue
execute positioned 3062 232 7 run function game:resources/prefabs/shops/variants/green
execute positioned 2994 232 79 run function game:resources/prefabs/shops/variants/yellow

execute positioned 2922 234 -1 run function game:resources/prefabs/upgraders/variants/red
execute positioned 3002 234 -61 run function game:resources/prefabs/upgraders/variants/blue
execute positioned 3062 234 19 run function game:resources/prefabs/upgraders/variants/green
execute positioned 2982 234 79 run function game:resources/prefabs/upgraders/variants/yellow

execute positioned 3005.5 232 22.5 rotated -45 0 run function game:resources/prefabs/merchant
execute positioned 2979.5 232 22.5 rotated 45 0 run function game:resources/prefabs/merchant
execute positioned 2979.5 232 -3.5 rotated 135 0 run function game:resources/prefabs/merchant
execute positioned 3005.5 232 -3.5 rotated -135 0 run function game:resources/prefabs/merchant

execute if entity @a[team=red,limit=1] positioned 2922 231 16 run function game:resources/prefabs/shulkers/variants/red
execute if entity @a[team=blue,limit=1] positioned 2985 231 -61 run function game:resources/prefabs/shulkers/variants/blue
execute if entity @a[team=green,limit=1] positioned 3062 231 2 run function game:resources/prefabs/shulkers/variants/green
execute if entity @a[team=yellow,limit=1] positioned 2999 231 79 run function game:resources/prefabs/shulkers/variants/yellow

execute positioned 2992.5 256 9.5 run function game:resources/prefabs/spawners/crystal
execute positioned 2992.5 227 9.5 run function game:resources/prefabs/spawners/crystal
execute if entity @a[team=red,limit=1] positioned 2922.5 231 7.5 run function game:resources/prefabs/spawners/variants/red
execute if entity @a[team=blue,limit=1] positioned 2994.5 231 -60.5 run function game:resources/prefabs/spawners/variants/blue
execute if entity @a[team=green,limit=1] positioned 3062.5 231 11.5 run function game:resources/prefabs/spawners/variants/green
execute if entity @a[team=yellow,limit=1] positioned 2990.5 231 79.5 run function game:resources/prefabs/spawners/variants/yellow

execute if entity @a[team=red,limit=1] run summon minecraft:area_effect_cloud 2900 236 15 {Duration:-1,WaitTime:-2147483648,Tags:["spawnpoint","red"],Rotation:[270f,10f]}
execute if entity @a[team=blue,limit=1] run summon minecraft:area_effect_cloud 2986 236 -83 {Duration:-1,WaitTime:-2147483648,Tags:["spawnpoint","blue"],Rotation:[0f,10f]}
execute if entity @a[team=green,limit=1] run summon minecraft:area_effect_cloud 3084.5 236 3.5 {Duration:-1,WaitTime:-2147483648,Tags:["spawnpoint","green"],Rotation:[90f,10f]}
execute if entity @a[team=yellow,limit=1] run summon minecraft:area_effect_cloud 2998.5 236 101.5 {Duration:-1,WaitTime:-2147483648,Tags:["spawnpoint","yellow"],Rotation:[180f,10f]}