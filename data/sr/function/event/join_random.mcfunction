execute store result score #teams sr.var if entity @e[type=minecraft:interaction,tag=sr.team]
execute store result score #players sr.var if entity @a[gamemode=!spectator]
scoreboard players operation #limit sr.var = #players sr.var
scoreboard players operation #limit sr.var /= #teams sr.var
scoreboard players operation #players sr.var %= #teams sr.var
execute if score #players sr.var matches 1.. run scoreboard players add #limit sr.var 1

execute store result score #count sr.var if entity @a[gamemode=!spectator,team=sr.red]
execute if score #count sr.var < #limit sr.var run tag @e[type=minecraft:interaction,tag=sr.team,tag=sr.red,limit=1] add sr.available

execute store result score #count sr.var if entity @a[gamemode=!spectator,team=sr.blue]
execute if score #count sr.var < #limit sr.var run tag @e[type=minecraft:interaction,tag=sr.team,tag=sr.blue,limit=1] add sr.available

execute store result score #count sr.var if entity @a[gamemode=!spectator,team=sr.green]
execute if score #count sr.var < #limit sr.var run tag @e[type=minecraft:interaction,tag=sr.team,tag=sr.green,limit=1] add sr.available

execute store result score #count sr.var if entity @a[gamemode=!spectator,team=sr.yellow]
execute if score #count sr.var < #limit sr.var run tag @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow,limit=1] add sr.available
tag @e[type=minecraft:interaction,tag=sr.team,tag=sr.available,sort=random,limit=1] add sr.selected
execute if entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.selected,tag=sr.red] run advancement grant @s only sr:join_team red
execute if entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.selected,tag=sr.blue] run advancement grant @s only sr:join_team blue
execute if entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.selected,tag=sr.green] run advancement grant @s only sr:join_team green
execute if entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.selected,tag=sr.yellow] run advancement grant @s only sr:join_team yellow

tag @e[type=minecraft:interaction,tag=sr.team,tag=sr.selected,sort=arbitrary] remove sr.selected
tag @e[type=minecraft:interaction,tag=sr.team,tag=sr.available,sort=arbitrary] remove sr.available

advancement revoke @s only sr:join_random
