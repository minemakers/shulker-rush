execute at @e[type=minecraft:block_display,tag=sr.spawnpoint] if block ~ ~ ~ minecraft:nether_portal run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:villager] if data entity @s Offers.Recipes[{maxUses:1}] run data modify entity @s Offers.Recipes[{maxUses:1}].uses set value 0
