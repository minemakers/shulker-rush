scoreboard players reset @s connect

scoreboard players enable @s rules
execute unless score @s playerId matches 0.. run function game:managers/players/connect
execute if score @s playerId matches 0.. run function game:managers/players/resume
