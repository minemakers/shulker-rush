advancement revoke @s only game:join_random

execute store result score @e[type=villager,tag=team_picker,tag=red] weight if entity @a[gamemode=!spectator,team=red]
execute store result score @e[type=villager,tag=team_picker,tag=blue] weight if entity @a[gamemode=!spectator,team=blue]
execute store result score @e[type=villager,tag=team_picker,tag=green] weight if entity @a[gamemode=!spectator,team=green]
execute store result score @e[type=villager,tag=team_picker,tag=yellow] weight if entity @a[gamemode=!spectator,team=yellow]
scoreboard players operation @e[type=villager,tag=team_picker] weight *= #-1 const

execute store result score #count var if entity @a[gamemode=!spectator,team=players]
scoreboard players remove #count var 1
scoreboard players operation @e[type=villager,tag=team_picker,sort=random,limit=1] weight += #count var

execute as @a[gamemode=!spectator,team=red] run scoreboard players add @e[type=villager,tag=team_picker,tag=!red] weight 1
execute as @a[gamemode=!spectator,team=blue] run scoreboard players add @e[type=villager,tag=team_picker,tag=!blue] weight 1
execute as @a[gamemode=!spectator,team=green] run scoreboard players add @e[type=villager,tag=team_picker,tag=!green] weight 1
execute as @a[gamemode=!spectator,team=yellow] run scoreboard players add @e[type=villager,tag=team_picker,tag=!yellow] weight 1

scoreboard players reset #highest weight
scoreboard players operation #highest weight > @e[type=villager,tag=team_picker] weight
scoreboard players operation @e[type=villager,tag=team_picker] weight -= #highest weight

tag @e[type=villager,tag=team_picker,scores={weight=0},sort=random,limit=1] add selected
execute if entity @e[type=villager,tag=team_picker,tag=selected,tag=red] run advancement grant @s only game:join_team red
execute if entity @e[type=villager,tag=team_picker,tag=selected,tag=blue] run advancement grant @s only game:join_team blue
execute if entity @e[type=villager,tag=team_picker,tag=selected,tag=green] run advancement grant @s only game:join_team green
execute if entity @e[type=villager,tag=team_picker,tag=selected,tag=yellow] run advancement grant @s only game:join_team yellow
tag @e[type=villager,tag=team_picker,tag=selected] remove selected