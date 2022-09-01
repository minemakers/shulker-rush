spreadplayers 0 0 0 5 under 0 false @s
fill -5 -15 -5 5 -5 5 air replace #game:shulkers

# Get stored player position
execute store result score #pos.x var run data get storage game:core tmp.Pos[0]
execute store result score #pos.y var run data get storage game:core tmp.Pos[1]
execute store result score #pos.z var run data get storage game:core tmp.Pos[2]

execute store result score #offset.x var run data get entity @s Pos[0]
execute store result score #offset.y var run data get entity @s Pos[1]
execute store result score #offset.z var run data get entity @s Pos[2]

scoreboard players operation #pos.x var += #offset.x var
scoreboard players operation #pos.y var += #offset.y var
scoreboard players operation #pos.z var += #offset.z var

execute store result entity @s Pos[0] double 1 run scoreboard players get #pos.x var
execute store result entity @s Pos[1] double 1 run scoreboard players get #pos.y var
execute store result entity @s Pos[2] double 1 run scoreboard players get #pos.z var
# With shulker's coordinates, continue execution
execute at @s as @a[tag=tmp.placed_shulker] positioned ~.5 ~9 ~.5 run function game:managers/shulkers/place
kill @s