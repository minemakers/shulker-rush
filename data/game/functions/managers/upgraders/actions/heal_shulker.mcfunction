scoreboard players add @s shulkerHealth 1

execute if entity @s[tag=red] run scoreboard players operation @e[type=minecraft:shulker,team=red] shulkerHealth = @s shulkerHealth
execute if entity @s[tag=blue] run scoreboard players operation @e[type=minecraft:shulker,team=blue] shulkerHealth = @s shulkerHealth
execute if entity @s[tag=green] run scoreboard players operation @e[type=minecraft:shulker,team=green] shulkerHealth = @s shulkerHealth
execute if entity @s[tag=yellow] run scoreboard players operation @e[type=minecraft:shulker,team=yellow] shulkerHealth = @s shulkerHealth

execute if entity @s[tag=red] as @e[type=minecraft:shulker,team=red] run function game:resources/views/game/shulker
execute if entity @s[tag=blue] as @e[type=minecraft:shulker,team=blue] run function game:resources/views/game/shulker
execute if entity @s[tag=green] as @e[type=minecraft:shulker,team=green] run function game:resources/views/game/shulker
execute if entity @s[tag=yellow] as @e[type=minecraft:shulker,team=yellow] run function game:resources/views/game/shulker