scoreboard players reset @s connect
advancement revoke @s only game:player_joined

scoreboard players enable @s rules
execute unless score @s playerId matches 0.. run function #game:managers/players/connect
execute if score @s playerId matches 0.. run function #game:managers/players/resume
