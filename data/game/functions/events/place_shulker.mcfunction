# Copy the shulker
execute store result score #result var run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 -5 -15 -5 filtered #game:shulkers

# Throw an error on failure and try to place the shulker on success
execute if score #result var matches 0 run function game:managers/shulkers/errors/block
execute if score #result var matches 1 run function game:managers/shulkers/place/lookup