scoreboard players set @e[type=minecraft:marker,tag=spawner,sort=nearest,limit=2] spawner_level 0
execute as @e[type=minecraft:marker,tag=spawner,sort=nearest,limit=2] run function game:managers/spawners/refresh
execute as @e[type=minecraft:marker,tag=spawner,sort=nearest,limit=2] store result score @s spawner_timer run data get entity @s data.timer
