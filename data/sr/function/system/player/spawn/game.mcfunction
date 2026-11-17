execute if score $arena sr.var matches 1 run tp @s[team=sr.players] 1028 251 53 162 13
execute if score $arena sr.var matches 2 run tp @s[team=sr.players] 2071 239 -1 90 20
execute if score $arena sr.var matches 3 run tp @s[team=sr.players] 3017 254 -14 51 13
execute if score $arena sr.var matches 1 run spawnpoint @s 1028 251 53
execute if score $arena sr.var matches 2 run spawnpoint @s 2071 239 -1
execute if score $arena sr.var matches 3 run spawnpoint @s 3017 254 -14

execute store result score #team sr.var run compute entity @s integer sr:team
execute at @e[type=minecraft:block_display,tag=sr.spawnpoint,predicate=sr:same_team,limit=1] run tp @s ~ ~ ~ ~ ~
