scoreboard players add @s shulker_health 1

execute if entity @s[tag=red] run scoreboard players operation @e[type=minecraft:shulker,team=red] shulker_health = @s shulker_health
execute if entity @s[tag=blue] run scoreboard players operation @e[type=minecraft:shulker,team=blue] shulker_health = @s shulker_health
execute if entity @s[tag=green] run scoreboard players operation @e[type=minecraft:shulker,team=green] shulker_health = @s shulker_health
execute if entity @s[tag=yellow] run scoreboard players operation @e[type=minecraft:shulker,team=yellow] shulker_health = @s shulker_health

execute if entity @s[tag=red] as @e[type=minecraft:shulker,team=red] run function game:resources/views/game/shulker
execute if entity @s[tag=blue] as @e[type=minecraft:shulker,team=blue] run function game:resources/views/game/shulker
execute if entity @s[tag=green] as @e[type=minecraft:shulker,team=green] run function game:resources/views/game/shulker
execute if entity @s[tag=yellow] as @e[type=minecraft:shulker,team=yellow] run function game:resources/views/game/shulker
