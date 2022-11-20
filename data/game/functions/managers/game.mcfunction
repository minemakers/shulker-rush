kill @e[type=minecraft:experience_orb]

execute as @e[type=minecraft:marker,tag=shop] run function game:managers/shops/check
execute as @e[type=minecraft:marker,tag=upgrader] run function game:managers/upgraders/check

scoreboard players remove @e[type=minecraft:marker,tag=spawner,scores={spawnerTimer=0..}] spawnerTimer 1
execute as @e[type=minecraft:marker,tag=spawner,scores={spawnerTimer=0}] run function game:managers/spawners/dispatch

execute as @e[type=minecraft:ender_pearl] at @s run function #game:events/prevent_border
execute as @e[type=minecraft:area_effect_cloud,nbt={Effects:[{Id:1,Duration:0}]}] at @s run function #game:events/bottle_explode

execute at @e[type=minecraft:marker,tag=chest] as @a[gamemode=!spectator,distance=..6] run function game:managers/chests/check
execute as @a[gamemode=!spectator,tag=lock] run function game:managers/chests/update

execute at @e[type=minecraft:marker,tag=spawner,tag=iron] run particle minecraft:smoke ~ ~.15 ~ .15 .15 .15 0 1 force
execute at @e[type=minecraft:marker,tag=spawner,tag=crystal] run particle minecraft:dust .8 .4 .7 .75 ~ ~.15 ~ .15 .15 .15 0 1 force
execute at @e[type=minecraft:marker,tag=upgrader] run particle minecraft:flame ~ ~1 ~ .1 .1 .1 .01 1 normal
