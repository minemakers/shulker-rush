execute store result score #teams var if entity @e[type=minecraft:armor_stand,tag=team_stand]

execute if score #teams var matches 2 run function game:managers/players/join_random/2_teams
execute if score #teams var matches 3 run function game:managers/players/join_random/3_teams
execute if score #teams var matches 4 run function game:managers/players/join_random/4_teams