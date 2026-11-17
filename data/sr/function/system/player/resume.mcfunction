execute store result score #team sr.var run compute entity @s integer sr:team
effect give @s[gamemode=!spectator] minecraft:nausea 8 4 true
effect give @s[gamemode=!spectator] minecraft:weakness 5 2

scoreboard players operation #armor_level sr.var = @s sr.armor_level
scoreboard players operation @s sr.armor_level = @e[type=minecraft:marker,tag=sr.upgrader,predicate=sr:same_team] sr.armor_level
execute unless score #armor_level sr.var = @s sr.armor_level run item modify entity @s armor.feet sr:armor

scoreboard players operation #sword_level sr.var = @s sr.sword_level
scoreboard players operation @s sr.sword_level = @e[type=minecraft:marker,tag=sr.upgrader,predicate=sr:same_team] sr.sword_level
execute unless score #sword_level sr.var = @s sr.sword_level run function sr:system/player/sword/refresh

data remove block 0 0 0 Items
data modify block 0 0 0 Items set from entity @e[type=minecraft:marker,tag=sr.upgrader,predicate=sr:same_team,limit=1] data.chest
item replace entity @s enderchest.* from block 0 0 0 container.*
