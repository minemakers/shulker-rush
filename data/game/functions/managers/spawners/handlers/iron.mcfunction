# Try to give item
execute store success score $tmp var run loot give @a[gamemode=!spectator,distance=..1] loot game:items/iron
# If failed, drop it
execute if score $tmp var matches 0 run loot spawn 0 0 0 loot game:items/iron
execute if score $tmp var matches 0 run tp @e[type=minecraft:item,x=0,y=0,z=0,distance=..5,limit=1] ~ ~ ~