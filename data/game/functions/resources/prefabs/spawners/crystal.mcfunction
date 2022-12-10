setblock ~ ~ ~ minecraft:air
summon minecraft:marker ~ ~ ~ {Tags:["spawner","crystal"]}
summon minecraft:slime ~ ~-1.6 ~ {Size:1,NoAI:1b,Silent:1b,Team:"players",ActiveEffects:[{ShowParticles:0b,Id:11,Duration:9999999,Amplifier:5b},{ShowParticles:0b,Id:14,Duration:9999999,Amplifier:1b}],Tags:["crystal_hitbox"],PersistenceRequired:1b}
execute store result entity @e[type=minecraft:marker,tag=spawner,tag=crystal,distance=..0.001,limit=1] data.timer int 1 run scoreboard players get $timer.crystal config
execute as @e[type=minecraft:marker,tag=spawner,tag=crystal,distance=..0.001,limit=1] store result score @s spawnerTimer run data get entity @s data.timer
