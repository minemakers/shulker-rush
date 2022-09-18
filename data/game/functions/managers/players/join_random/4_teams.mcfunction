## execute store result score @e[type=villager,tag=team_picker,tag=red] weight if entity @a[gamemode=!spectator,team=red]
execute store result score #red_players var if entity @a[gamemode=!spectator,team=red]
## execute store result score @e[type=villager,tag=team_picker,tag=blue] weight if entity @a[gamemode=!spectator,team=blue]
execute store result score #blue_players var if entity @a[gamemode=!spectator,team=blue]
## execute store result score @e[type=villager,tag=team_picker,tag=green] weight if entity @a[gamemode=!spectator,team=green]
execute store result score #green_players var if entity @a[gamemode=!spectator,team=green]
## execute store result score @e[type=villager,tag=team_picker,tag=yellow] weight if entity @a[gamemode=!spectator,team=yellow]
execute store result score #yellow_players var if entity @a[gamemode=!spectator,team=yellow]

## scoreboard players operation @e[type=villager,tag=team_picker] weight *= #-1 const
scoreboard players operation #red_weight var = #red_players var
scoreboard players operation #red_weight var *= #-1 const
scoreboard players operation #blue_weight var = #blue_players var
scoreboard players operation #blue_weight var *= #-1 const
scoreboard players operation #green_weight var = #green_players var
scoreboard players operation #green_weight var *= #-1 const
scoreboard players operation #yellow_weight var = #yellow_players var
scoreboard players operation #yellow_weight var *= #-1 const

## execute store result score #count var if entity @a[gamemode=!spectator,team=players]
execute store result score #players var if entity @a[gamemode=!spectator,team=players]
## scoreboard players remove #count var 1
scoreboard players remove #players var 1

## scoreboard players operation @e[type=villager,tag=team_picker,sort=random,limit=1] weight += #count var
scoreboard players operation #red_weight var += #players var
scoreboard players operation #blue_weight var += #players var
scoreboard players operation #green_weight var += #players var
scoreboard players operation #yellow_weight var += #players var

## execute as @a[gamemode=!spectator,team=red] run scoreboard players add @e[type=villager,tag=team_picker,tag=!red] weight 1
# scoreboard players operation #red_weight var += #red_players var
scoreboard players operation #blue_weight var += #red_players var
scoreboard players operation #green_weight var += #red_players var
scoreboard players operation #yellow_weight var += #red_players var

## execute as @a[gamemode=!spectator,team=blue] run scoreboard players add @e[type=villager,tag=team_picker,tag=!blue] weight 1
scoreboard players operation #red_weight var += #blue_players var
# scoreboard players operation #blue_weight var += #blue_players var
scoreboard players operation #green_weight var += #blue_players var
scoreboard players operation #yellow_weight var += #blue_players var

## execute as @a[gamemode=!spectator,team=green] run scoreboard players add @e[type=villager,tag=team_picker,tag=!green] weight 1
scoreboard players operation #red_weight var += #green_players var
scoreboard players operation #blue_weight var += #green_players var
# scoreboard players operation #green_weight var += #green_players var
scoreboard players operation #yellow_weight var += #green_players var

## execute as @a[gamemode=!spectator,team=yellow] run scoreboard players add @e[type=villager,tag=team_picker,tag=!yellow] weight 1
scoreboard players operation #red_weight var += #yellow_players var
scoreboard players operation #blue_weight var += #yellow_players var
scoreboard players operation #green_weight var += #yellow_players var
# scoreboard players operation #yellow_weight var += #yellow_players var

## scoreboard players reset #highest weight
scoreboard players operation #highest_weight var = #red_weight var

## scoreboard players operation #highest weight > @e[type=villager,tag=team_picker] weight
execute if score #highest_weight var < #blue_weight var run scoreboard players operation #highest_weight var = #blue_weight var
execute if score #highest_weight var < #green_weight var run scoreboard players operation #highest_weight var = #green_weight var
execute if score #highest_weight var < #yellow_weight var run scoreboard players operation #highest_weight var = #yellow_weight var

## scoreboard players operation @e[type=villager,tag=team_picker] weight -= #highest weight

## tag @e[type=villager,tag=team_picker,scores={weight=0},sort=random,limit=1] add selected
execute if score #red_weight var = #highest_weight var run setblock 15 -64 15 minecraft:red_concrete
execute if score #blue_weight var = #highest_weight var run setblock 14 -64 15 minecraft:blue_concrete
execute if score #green_weight var = #highest_weight var run setblock 15 -64 14 minecraft:green_concrete
execute if score #yellow_weight var = #highest_weight var run setblock 14 -64 14 minecraft:yellow_concrete

summon minecraft:marker 0 0 0 {UUID:[I;0,0,0,9]}
spreadplayers 15.5 15.5 0 2 under -1 false 00000000-0000-0000-0000-000000000009
## execute if entity @e[type=villager,tag=team_picker,tag=selected,tag=red] run advancement grant @s only game:join_team red
execute at 00000000-0000-0000-0000-000000000009 if block ~ ~-1 ~ minecraft:red_concrete run advancement grant @s only game:join_team red
## execute if entity @e[type=villager,tag=team_picker,tag=selected,tag=blue] run advancement grant @s only game:join_team blue
execute at 00000000-0000-0000-0000-000000000009 if block ~ ~-1 ~ minecraft:blue_concrete run advancement grant @s only game:join_team blue
## execute if entity @e[type=villager,tag=team_picker,tag=selected,tag=green] run advancement grant @s only game:join_team green
execute at 00000000-0000-0000-0000-000000000009 if block ~ ~-1 ~ minecraft:green_concrete run advancement grant @s only game:join_team green
## execute if entity @e[type=villager,tag=team_picker,tag=selected,tag=yellow] run advancement grant @s only game:join_team yellow
execute at 00000000-0000-0000-0000-000000000009 if block ~ ~-1 ~ minecraft:yellow_concrete run advancement grant @s only game:join_team yellow

## tag @e[type=villager,tag=team_picker,tag=selected] remove selected
fill 15 -64 15 14 -64 14 minecraft:air
kill 00000000-0000-0000-0000-000000000009