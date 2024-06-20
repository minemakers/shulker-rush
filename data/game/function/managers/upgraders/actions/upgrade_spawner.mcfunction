scoreboard players add @s spawner_level 1

execute if entity @s[tag=red] run scoreboard players operation @e[type=minecraft:marker,tag=spawner,tag=red] spawner_level = @s spawner_level
execute if entity @s[tag=blue] run scoreboard players operation @e[type=minecraft:marker,tag=spawner,tag=blue] spawner_level = @s spawner_level
execute if entity @s[tag=green] run scoreboard players operation @e[type=minecraft:marker,tag=spawner,tag=green] spawner_level = @s spawner_level
execute if entity @s[tag=yellow] run scoreboard players operation @e[type=minecraft:marker,tag=spawner,tag=yellow] spawner_level = @s spawner_level

execute if entity @s[tag=red] as @e[type=minecraft:marker,tag=spawner,tag=red] run function game:managers/spawners/refresh
execute if entity @s[tag=blue] as @e[type=minecraft:marker,tag=spawner,tag=blue] run function game:managers/spawners/refresh
execute if entity @s[tag=green] as @e[type=minecraft:marker,tag=spawner,tag=green] run function game:managers/spawners/refresh
execute if entity @s[tag=yellow] as @e[type=minecraft:marker,tag=spawner,tag=yellow] run function game:managers/spawners/refresh
