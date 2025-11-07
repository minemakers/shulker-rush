execute if score $arena var matches 1 run tp @s[team=players] 1028 251 53 162 13
execute if score $arena var matches 2 run tp @s[team=players] 2071 239 -1 90 20
execute if score $arena var matches 3 run tp @s[team=players] 3017 254 -14 51 13
execute if score $arena var matches 1 run spawnpoint @s 1028 251 53
execute if score $arena var matches 2 run spawnpoint @s 2071 239 -1
execute if score $arena var matches 3 run spawnpoint @s 3017 254 -14

execute if entity @s[team=red] at @e[type=minecraft:block_display,tag=spawnpoint,tag=red,limit=1] run tp @s ~ ~ ~ ~ ~
execute if entity @s[team=blue] at @e[type=minecraft:block_display,tag=spawnpoint,tag=blue,limit=1] run tp @s ~ ~ ~ ~ ~
execute if entity @s[team=green] at @e[type=minecraft:block_display,tag=spawnpoint,tag=green,limit=1] run tp @s ~ ~ ~ ~ ~
execute if entity @s[team=yellow] at @e[type=minecraft:block_display,tag=spawnpoint,tag=yellow,limit=1] run tp @s ~ ~ ~ ~ ~
