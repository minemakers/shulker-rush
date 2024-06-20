summon minecraft:marker ~ ~ ~ {Tags:["upgrader","green"]}
execute as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] at @s run function game:resources/prefabs/upgraders/abstract
