execute store result score #team sr.var run compute entity @s integer sr:team
scoreboard players add @s sr.spawner_level 1

scoreboard players operation @e[type=minecraft:marker,tag=sr.spawner,predicate=sr:same_team] sr.spawner_level = @s sr.spawner_level
