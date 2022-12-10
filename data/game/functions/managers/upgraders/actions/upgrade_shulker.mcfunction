scoreboard players add @s shulkerLevel 1

execute if entity @s[tag=red] run scoreboard players operation @e[type=minecraft:shulker,team=red] shulkerLevel = @s shulkerLevel
execute if entity @s[tag=blue] run scoreboard players operation @e[type=minecraft:shulker,team=blue] shulkerLevel = @s shulkerLevel
execute if entity @s[tag=green] run scoreboard players operation @e[type=minecraft:shulker,team=green] shulkerLevel = @s shulkerLevel
execute if entity @s[tag=yellow] run scoreboard players operation @e[type=minecraft:shulker,team=yellow] shulkerLevel = @s shulkerLevel
