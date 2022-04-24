execute as @a[gamemode=!spectator,distance=..1] run loot give @s loot game:items/gold
execute unless entity @a[gamemode=!spectator,distance=..1] run loot spawn 0 0 0 loot game:items/gold
execute unless entity @a[gamemode=!spectator,distance=..1] run tp @e[type=minecraft:item,x=0,y=0,z=0,distance=..5,limit=1] ~ ~ ~