execute store result score #red_players var if entity @a[gamemode=!spectator,team=red]
execute store result score #blue_players var if entity @a[gamemode=!spectator,team=blue]
execute store result score #green_players var if entity @a[gamemode=!spectator,team=green]
execute store result score #yellow_players var if entity @a[gamemode=!spectator,team=yellow]

execute store result score #teams var if entity @e[type=villager,tag=team]
execute store result score #players var if entity @a[gamemode=!spectator]
scoreboard players operation #limit var = #players var
scoreboard players operation #limit var /= #teams var
scoreboard players operation #players var %= #teams var

execute if score #players var matches 1.. run scoreboard players add #limit var 1
execute if score #red_players var < #limit var run tag @e[type=villager,tag=team,tag=red,limit=1] add available
execute if score #blue_players var < #limit var run tag @e[type=villager,tag=team,tag=blue,limit=1] add available
execute if score #green_players var < #limit var run tag @e[type=villager,tag=team,tag=green,limit=1] add available
execute if score #yellow_players var < #limit var run tag @e[type=villager,tag=team,tag=yellow,limit=1] add available

tag @e[type=villager,tag=team,tag=available,sort=random,limit=1] add selected
execute if entity @e[type=villager,tag=team,tag=selected,tag=red] run advancement grant @s only game:join_team red
execute if entity @e[type=villager,tag=team,tag=selected,tag=blue] run advancement grant @s only game:join_team blue
execute if entity @e[type=villager,tag=team,tag=selected,tag=green] run advancement grant @s only game:join_team green
execute if entity @e[type=villager,tag=team,tag=selected,tag=yellow] run advancement grant @s only game:join_team yellow

tag @e[type=villager,tag=team,tag=selected,sort=arbitrary] remove selected
tag @e[type=villager,tag=team,tag=available,sort=arbitrary] remove available