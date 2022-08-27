scoreboard players set @e[type=minecraft:marker,tag=spawner,sort=nearest,limit=2] spawnerLevel 0
execute as @e[type=minecraft:marker,tag=spawner,sort=nearest,limit=2] run function #game:managers/spawners/refresh
execute as @e[type=minecraft:marker,tag=spawner,sort=nearest,limit=2] store result score @s spawnerTimer run data get entity @s data.timer