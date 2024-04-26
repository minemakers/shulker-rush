scoreboard players add @s shulker_level 1

execute if entity @s[tag=red] run scoreboard players operation @e[type=minecraft:shulker,team=red] shulker_level = @s shulker_level
execute if entity @s[tag=blue] run scoreboard players operation @e[type=minecraft:shulker,team=blue] shulker_level = @s shulker_level
execute if entity @s[tag=green] run scoreboard players operation @e[type=minecraft:shulker,team=green] shulker_level = @s shulker_level
execute if entity @s[tag=yellow] run scoreboard players operation @e[type=minecraft:shulker,team=yellow] shulker_level = @s shulker_level
