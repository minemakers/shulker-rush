# Throws an error if the placed block cannot be found
execute unless block ~ ~ ~ #game:shulkers run function game:managers/shulkers/errors/block

# Summon the shulker only if it's on the right island
execute if block ~ ~ ~ minecraft:red_shulker_box if predicate game:locations/red_island run function game:resources/prefabs/shulkers/variants/red
execute if block ~ ~ ~ minecraft:cyan_shulker_box if predicate game:locations/blue_island run function game:resources/prefabs/shulkers/variants/blue
execute if block ~ ~ ~ minecraft:lime_shulker_box if predicate game:locations/green_island run function game:resources/prefabs/shulkers/variants/green
execute if block ~ ~ ~ minecraft:yellow_shulker_box if predicate game:locations/yellow_island run function game:resources/prefabs/shulkers/variants/yellow

# Throws an error if the shulker is out of its island
execute if block ~ ~ ~ #game:shulkers unless entity @e[type=minecraft:shulker,distance=..1,sort=nearest,limit=1] run function game:managers/shulkers/errors/island
execute if block ~ ~ ~ #game:shulkers run setblock ~ ~ ~ minecraft:air