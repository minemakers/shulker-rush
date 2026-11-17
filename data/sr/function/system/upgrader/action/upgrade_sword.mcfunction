execute store result score #team sr.var run compute entity @s integer sr:team
scoreboard players add @s sr.sword_level 1

scoreboard players operation @a[predicate=sr:same_team] sr.sword_level = @s sr.sword_level

execute as @a[predicate=sr:same_team] run function sr:system/player/sword/refresh
