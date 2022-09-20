execute if entity @s[advancements={game:place_shulker={red=true}}] run scoreboard players set #shulker_type var 1
execute if entity @s[advancements={game:place_shulker={blue=true}}] run scoreboard players set #shulker_type var 2
execute if entity @s[advancements={game:place_shulker={green=true}}] run scoreboard players set #shulker_type var 3
execute if entity @s[advancements={game:place_shulker={yellow=true}}] run scoreboard players set #shulker_type var 4

# Copy the shulker
execute store result score #result var run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 -5 -15 -5 filtered #game:shulkers

# Throw an error on failure and try to place the shulker on success
execute if score #result var matches 0 run function game:managers/shulkers/errors/block
execute if score #result var matches 1 run function game:managers/shulkers/place/lookup