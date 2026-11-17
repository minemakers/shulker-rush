execute store result score #team sr.var run compute entity @s integer sr:team
scoreboard players add @s sr.shulker_health 1

scoreboard players operation @e[type=minecraft:shulker,predicate=sr:same_team] sr.shulker_health = @s sr.shulker_health

execute as @e[type=minecraft:shulker,predicate=sr:same_team] run function sr:resource/view/game/shulker
