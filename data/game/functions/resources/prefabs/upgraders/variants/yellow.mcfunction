summon minecraft:marker ~ ~ ~ {Tags:["upgrader","yellow"]}
execute as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] at @s run function game:resources/prefabs/upgraders/abstract
