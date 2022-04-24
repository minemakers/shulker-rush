summon minecraft:marker ~ ~ ~ {Tags:["shop","yellow"]}
execute as @e[type=minecraft:marker,tag=shop,sort=nearest,limit=1] at @s run function game:resources/prefabs/shops/abstract