execute if score $status var matches 0 run tp @s 5000 216 0 0 10
execute if score $status var matches 0 run spawnpoint @s 5000 216 0

execute if score $status var matches 1 if score $arena var matches 1 run tp @s 1006.5 254.7 27.5
execute if score $status var matches 1 if score $arena var matches 2 run tp @s 2026.5 229.7 -0.5
execute if score $status var matches 1 if score $arena var matches 3 run tp @s 2992.5 294.7 9.5
execute if score $status var matches 1 if score $arena var matches 1 run spawnpoint @s 1006 254 27
execute if score $status var matches 1 if score $arena var matches 2 run spawnpoint @s 2026 165 -0
execute if score $status var matches 1 if score $arena var matches 3 run spawnpoint @s 2992 230 9

execute if score $status var matches 2 if score $arena var matches 1 run tp @s[team=players] 1028 251 53 162 13
execute if score $status var matches 2 if score $arena var matches 2 run tp @s[team=players] 2071 239 -1 90 20
execute if score $status var matches 2 if score $arena var matches 3 run tp @s[team=players] 3017 254 -14 51 13
execute if score $status var matches 2 if score $arena var matches 1 run spawnpoint @s[team=players] 1028 251 53
execute if score $status var matches 2 if score $arena var matches 2 run spawnpoint @s[team=players] 2071 239 -1
execute if score $status var matches 2 if score $arena var matches 3 run spawnpoint @s[team=players] 3017 254 -14

execute if score $status var matches 2 at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=red,limit=1] run tp @s[team=red] ~ ~ ~ ~ ~
execute if score $status var matches 2 at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=blue,limit=1] run tp @s[team=blue] ~ ~ ~ ~ ~
execute if score $status var matches 2 at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=green,limit=1] run tp @s[team=green] ~ ~ ~ ~ ~
execute if score $status var matches 2 at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=yellow,limit=1] run tp @s[team=yellow] ~ ~ ~ ~ ~