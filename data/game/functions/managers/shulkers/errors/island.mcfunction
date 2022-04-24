tellraw @s [{"storage":"game:lang","nbt":"errors.shulker_island","color":"gray"}]

# Give back the old shulker item
execute if block ~ ~ ~ minecraft:red_shulker_box run loot give @s loot game:blocks/red_shulker
execute if block ~ ~ ~ minecraft:cyan_shulker_box run loot give @s loot game:blocks/blue_shulker
execute if block ~ ~ ~ minecraft:lime_shulker_box run loot give @s loot game:blocks/green_shulker
execute if block ~ ~ ~ minecraft:yellow_shulker_box run loot give @s loot game:blocks/yellow_shulker