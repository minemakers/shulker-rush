fill 2020 233 12 2032 228 -14 air

summon minecraft:marker 2021 210 -46 {Tags:["chest"]}
summon minecraft:marker 2031 210 -46 {Tags:["chest"]}
summon minecraft:marker 2021 210 44 {Tags:["chest"]}
summon minecraft:marker 2031 210 44 {Tags:["chest"]}

execute positioned 2033 210 -51 run function game:resources/prefabs/shops/variants/blue
execute positioned 2019 210 49 run function game:resources/prefabs/shops/variants/yellow

execute positioned 2018 210 -51 run function game:resources/prefabs/upgraders/variants/blue
execute positioned 2034 210 49 run function game:resources/prefabs/upgraders/variants/yellow

execute positioned 2026 209 -55 run function game:resources/prefabs/shulkers/variants/blue
execute positioned 2026 209 53 run function game:resources/prefabs/shulkers/variants/yellow

execute positioned 1955.5 211 2.5 run function game:resources/prefabs/spawners/crystal
execute positioned 2087.5 229 -3.5 run function game:resources/prefabs/spawners/crystal
execute positioned 2026.5 209 -50.5 run function game:resources/prefabs/spawners/variants/blue
execute positioned 2026.5 209 49.5 run function game:resources/prefabs/spawners/variants/yellow

summon minecraft:area_effect_cloud 2026.5 216 -75.5 {Duration:-1,WaitTime:-2147483648,Tags:["spawnpoint","blue"],Rotation:[0f,10f]}
summon minecraft:area_effect_cloud 2026.5 216 74.5 {Duration:-1,WaitTime:-2147483648,Tags:["spawnpoint","yellow"],Rotation:[180f,10f]}

# Spawn protection
fill 2025 214 -77 2027 215 -74 minecraft:moving_piston replace minecraft:air
fill 2027 214 75 2025 215 72 minecraft:moving_piston replace minecraft:air