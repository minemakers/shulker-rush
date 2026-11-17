execute store result score @s sr.spawner_timer run compute entity @s integer sr:spawner/delay

execute at @s[type=minecraft:marker,tag=sr.spawner,tag=sr.iron] run function sr:system/spawner/handler/iron
execute at @s[type=minecraft:marker,tag=sr.spawner,tag=sr.gold] run function sr:system/spawner/handler/gold
execute at @s[type=minecraft:marker,tag=sr.spawner,tag=sr.crystal] run function sr:system/spawner/handler/crystal
