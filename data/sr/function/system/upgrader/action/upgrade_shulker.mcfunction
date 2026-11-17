execute store result score #team sr.var run compute entity @s integer sr:team
scoreboard players add @s sr.shulker_level 1

scoreboard players operation @e[type=minecraft:shulker,predicate=sr:same_team] sr.shulker_level = @s sr.shulker_level
