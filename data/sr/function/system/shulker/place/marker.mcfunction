spreadplayers 0 0 0 5 under 0 false @s
fill -5 -15 -5 5 -5 5 air replace #sr:shulkers

# Get stored player position
execute store result score #pos.x sr.var run data get storage sr:core pos[0]
execute store result score #pos.y sr.var run data get storage sr:core pos[1]
execute store result score #pos.z sr.var run data get storage sr:core pos[2]

execute store result score #offset.x sr.var run data get entity @s Pos[0]
execute store result score #offset.y sr.var run data get entity @s Pos[1]
execute store result score #offset.z sr.var run data get entity @s Pos[2]

scoreboard players operation #pos.x sr.var += #offset.x sr.var
scoreboard players operation #pos.y sr.var += #offset.y sr.var
scoreboard players operation #pos.z sr.var += #offset.z sr.var

execute store result entity @s Pos[0] double 1 run scoreboard players get #pos.x sr.var
execute store result entity @s Pos[1] double 1 run scoreboard players get #pos.y sr.var
execute store result entity @s Pos[2] double 1 run scoreboard players get #pos.z sr.var
