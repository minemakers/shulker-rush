setblock ~ ~ ~ minecraft:air
summon minecraft:marker ~ ~ ~ {Tags:["sr.spawner","sr.crystal"]}
summon minecraft:interaction ~ ~ ~ {Tags:["sr.crystal_hitbox"],width:0,height:0}
execute as @e[type=minecraft:marker,tag=sr.spawner,tag=sr.crystal,sort=nearest,limit=1] store result score @s sr.spawner_timer run compute entity @s integer sr:spawner/delay
