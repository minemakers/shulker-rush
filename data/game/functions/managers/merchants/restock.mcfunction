execute as @e[type=minecraft:villager] run data modify entity @s Offers.Recipes[{maxUses:1}].uses set value 0
execute at @e[type=minecraft:area_effect_cloud,tag=spawnpoint] if block ~ ~ ~ minecraft:nether_portal run setblock ~ ~ ~ minecraft:air
