execute as @e[type=minecraft:falling_block] at @s unless block ~ ~-2 ~ minecraft:air run function sr:event/place_useable

execute if entity @e[type=minecraft:falling_block] run schedule function sr:event/place_scaffolding 2t replace

advancement revoke @s only sr:place_scaffolding
