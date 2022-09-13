execute store result score #blue var if entity @a[team=blue]
execute store result score #green var if entity @a[team=green]
execute store result score #yellow var if entity @a[team=yellow]

scoreboard players operation #min_players var = #blue var
execute if score #min_players var > #green var run scoreboard players operation #min_players var = #green var
execute if score #min_players var > #yellow var run scoreboard players operation #min_players var = #yellow var

execute if score #blue var = #min_players var run setblock 14 -64 15 minecraft:blue_concrete
execute if score #green var = #min_players var run setblock 15 -64 14 minecraft:green_concrete
execute if score #yellow var = #min_players var run setblock 14 -64 14 minecraft:yellow_concrete

summon minecraft:marker 0 0 0 {UUID:[I;0,0,0,9]}
spreadplayers 15.5 15.5 0 2 under -1 false 00000000-0000-0000-0000-000000000009

execute if block ~ ~-0.5 ~ minecraft:blue_concrete run team join blue
execute if block ~ ~-0.5 ~ minecraft:green_concrete run team join green
execute if block ~ ~-0.5 ~ minecraft:yellow_concrete run team join yellow

fill 15 -64 15 14 -64 14 minecraft:air
kill 00000000-0000-0000-0000-000000000009
# Fallback
execute if entity @s[team=players] run team join yellow