kill @e[type=minecraft:experience_orb]

execute as @e[type=minecraft:marker,tag=sr.shop] run function sr:system/shop/check
execute as @e[type=minecraft:marker,tag=sr.upgrader] run function sr:system/upgrader/check

scoreboard players remove @e[type=minecraft:marker,tag=sr.spawner,scores={sr.spawner_timer=0..}] sr.spawner_timer 1
execute as @e[type=minecraft:marker,tag=sr.spawner,scores={sr.spawner_timer=0}] run function sr:system/spawner/dispatch

execute as @e[type=#sr:prevent_border] at @s run function sr:event/prevent_border
execute as @e[type=minecraft:area_effect_cloud,predicate=sr:explosive_cloud] at @s run function sr:event/bottle_explode

execute at @e[type=minecraft:marker,tag=sr.chest] as @a[gamemode=!spectator,distance=..6] run function sr:system/chest/check
execute as @a[gamemode=!spectator,tag=sr.lock] run function sr:system/chest/update

execute at @e[type=minecraft:marker,tag=sr.spawner,tag=sr.iron] run particle minecraft:smoke ~ ~.15 ~ .15 .15 .15 0 1 force
execute at @e[type=minecraft:marker,tag=sr.spawner,tag=sr.crystal] run particle minecraft:dust{color:[0.8,0.4,0.7],scale:0.75} ~ ~.15 ~ .15 .15 .15 0 1 force
execute at @e[type=minecraft:marker,tag=sr.upgrader] run particle minecraft:flame ~ ~1 ~ .1 .1 .1 .01 1 normal
