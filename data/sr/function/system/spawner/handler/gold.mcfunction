execute store success score #success sr.var run loot give @a[gamemode=!spectator,distance=..1] loot sr:item/gold
execute if score #success sr.var matches 1 run playsound minecraft:entity.item.pickup player @a[distance=..10] ~ ~ ~ 0.2 1.5 0
execute if score #success sr.var matches 0 run loot spawn 0 0 0 loot sr:item/gold
execute if score #success sr.var matches 0 run tp @e[type=minecraft:item,x=0,y=0,z=0,distance=..5,limit=1] ~ ~ ~
