execute store result score #team sr.var run compute entity @s integer sr:team
scoreboard players remove @s sr.shulker_health 1

scoreboard players operation @e[type=minecraft:marker,tag=sr.upgrader,predicate=sr:same_team] sr.shulker_health = @s sr.shulker_health

function sr:resource/view/game/shulker
