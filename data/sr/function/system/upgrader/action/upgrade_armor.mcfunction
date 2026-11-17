execute store result score #team sr.var run compute entity @s integer sr:team
scoreboard players add @s sr.armor_level 1

scoreboard players operation @a[predicate=sr:same_team] sr.armor_level = @s sr.armor_level

item modify entity @a[predicate=sr:same_team] armor.feet sr:armor
