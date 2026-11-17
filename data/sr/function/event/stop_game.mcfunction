scoreboard players reset * sr.confirm
scoreboard players set $status sr.var 0
gamerule fall_damage false

clear @a
team join sr.players @a
gamemode adventure @a

scoreboard players reset * sr.player_id
scoreboard players reset * sr.kill_count
scoreboard players reset * sr.death_count
scoreboard players reset * sr.armor_level
scoreboard players reset * sr.sword_level
scoreboard players reset * sr.respawn_timer

execute as @e[type=minecraft:marker,tag=sr.useable_blocks] at @s if entity @s[y=309,dy=50] run tp @s ~ 307 ~
execute at @e[type=minecraft:marker,tag=sr.useable_blocks] run fill ~17 ~12 ~17 ~-17 ~-12 ~-17 air replace #sr:useable

fill 996 238 42 991 237 51 minecraft:water replace #sr:water_and_air
fill 992 238 52 996 237 53 minecraft:water replace #sr:water_and_air
fill 1016 238 42 1021 238 51 minecraft:water replace #sr:water_and_air
fill 1020 238 52 1016 238 53 minecraft:water replace #sr:water_and_air

execute at @e[type=minecraft:marker,tag=sr.shop] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:moving_piston

function sr:resource/scene/lobby
execute as @a run function sr:system/player/spawn

schedule clear sr:state/game/check_teams
schedule clear sr:state/teams/check_players

advancement revoke @s only sr:stop_game
