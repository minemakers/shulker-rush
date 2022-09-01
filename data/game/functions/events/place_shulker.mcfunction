execute store success score #mainhand var if predicate game:shulker_in_mainhand
# We'll need the player reference for later
tag @s add tmp.placed_shulker

# Copy the shulker
execute store result score #result var run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 -5 -15 -5 filtered #game:shulkers
# If shulker wasn't copied, just error out
execute if score #result var matches 0 run function game:managers/shulkers/errors/block

## Get shulker's coordinates
# Store player's position for later
execute if score #result var matches 1 run data modify storage game:core tmp.Pos set from entity @s Pos
execute if score #result var matches 1 run summon minecraft:marker 0 0 0 {Tags:["shulker_block"]}
execute if score #result var matches 1 as @e[type=minecraft:marker,tag=shulker_block,limit=1] run function game:events/place_shulker/as_marker