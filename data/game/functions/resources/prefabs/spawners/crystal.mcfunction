setblock ~ ~ ~ minecraft:air
summon minecraft:marker ~ ~ ~ {Tags:["spawner","crystal"]}
summon minecraft:interaction ~ ~ ~ {Tags:["crystal_hitbox"]}
execute store result entity @e[type=minecraft:marker,tag=spawner,tag=crystal,sort=nearest,limit=1] data.timer int 1 run scoreboard players get $timer.crystal config
execute as @e[type=minecraft:marker,tag=spawner,tag=crystal,sort=nearest,limit=1] store result score @s spawnerTimer run data get entity @s data.timer
