execute as @e[type=minecraft:falling_block] at @s unless block ~ ~-2 ~ minecraft:air run function game:events/place_useable

execute if entity @e[type=minecraft:falling_block] run schedule function game:events/place_scaffolding 4t replace