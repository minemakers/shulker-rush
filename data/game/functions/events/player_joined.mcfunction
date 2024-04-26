scoreboard players reset @s connect

scoreboard players enable @s rules
execute unless score @s player_id matches 0.. run function game:managers/players/connect
execute if score @s player_id matches 0.. run function game:managers/players/resume
