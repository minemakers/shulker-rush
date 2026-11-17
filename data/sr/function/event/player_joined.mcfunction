scoreboard players reset @s sr.connect

scoreboard players enable @s sr.rules
execute unless score @s sr.player_id matches 0.. run function sr:system/player/connect
execute if score @s sr.player_id matches 0.. run function sr:system/player/resume

advancement revoke @s only sr:player_joined
