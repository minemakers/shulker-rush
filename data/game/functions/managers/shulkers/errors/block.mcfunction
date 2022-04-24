tellraw @s [{"storage":"game:lang","nbt":"errors.shulker_block","color":"gray"}]

# Give back the old shulker item
execute store success score #success var run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:air replace minecraft:red_shulker_box
execute if score #success var matches 1 run loot give @s loot game:blocks/red_shulker
execute store success score #success var run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:air replace minecraft:cyan_shulker_box
execute if score #success var matches 1 run loot give @s loot game:blocks/blue_shulker
execute store success score #success var run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:air replace minecraft:lime_shulker_box
execute if score #success var matches 1 run loot give @s loot game:blocks/green_shulker
execute store success score #success var run fill ~15 ~15 ~15 ~-15 ~-15 ~-15 minecraft:air replace minecraft:yellow_shulker_box
execute if score #success var matches 1 run loot give @s loot game:blocks/yellow_shulker