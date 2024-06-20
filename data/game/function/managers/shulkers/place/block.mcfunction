# Summon the shulker only if it's on the right island
execute if score #shulker_type var matches 1 if predicate game:locations/red_island run function game:resources/prefabs/shulkers/variants/red
execute if score #shulker_type var matches 2 if predicate game:locations/blue_island run function game:resources/prefabs/shulkers/variants/blue
execute if score #shulker_type var matches 3 if predicate game:locations/green_island run function game:resources/prefabs/shulkers/variants/green
execute if score #shulker_type var matches 4 if predicate game:locations/yellow_island run function game:resources/prefabs/shulkers/variants/yellow

# Throws an error if the shulker is out of its island
execute unless entity @e[type=minecraft:shulker,distance=..7,sort=nearest,limit=1] run function game:managers/shulkers/errors/island
execute if block ~ ~ ~ #game:shulkers run setblock ~ ~ ~ minecraft:air
