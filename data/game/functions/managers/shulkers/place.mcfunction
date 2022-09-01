# Summon the shulker only if it's on the right island
scoreboard players set #success var 0
execute if score #shulker_type var matches 1 store success score #success var if predicate game:locations/red_island run function game:resources/prefabs/shulkers/variants/red
execute if score #shulker_type var matches 2 store success score #success var if predicate game:locations/blue_island run function game:resources/prefabs/shulkers/variants/blue
execute if score #shulker_type var matches 3 store success score #success var if predicate game:locations/green_island run function game:resources/prefabs/shulkers/variants/green
execute if score #shulker_type var matches 4 store success score #success var if predicate game:locations/yellow_island run function game:resources/prefabs/shulkers/variants/yellow

# Throws an error if the shulker is out of its island
execute if score #success var matches 0 run function game:managers/shulkers/errors/island
execute if block ~ ~ ~ #game:shulkers run setblock ~ ~ ~ minecraft:air
# Untag the player that placed the shulker
tag @s remove tmp.placed_shulker