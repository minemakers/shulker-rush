scoreboard players reset @s confirm
scoreboard players set $status var 0
gamerule fallDamage false

clear @a
team join players @a
gamemode adventure @a

scoreboard players reset * playerId
scoreboard players reset * killCount
scoreboard players reset * deathCount
scoreboard players reset * armorLevel
scoreboard players reset * swordLevel
scoreboard players reset * respawnTimer

# Clear the area before teleporting players to the lobby
execute as @e[type=marker,tag=useable_blocks] at @s if entity @s[y=309,dy=50] run tp @s ~ 307 ~
execute at @e[type=marker,tag=useable_blocks] run fill ~17 ~12 ~17 ~-17 ~-12 ~-17 air replace #game:useable

fill 996 238 42 991 237 51 minecraft:water replace #game:water_and_air
fill 992 238 52 996 237 53 minecraft:water replace #game:water_and_air
fill 1016 238 42 1021 238 51 minecraft:water replace #game:water_and_air
fill 1020 238 52 1016 238 53 minecraft:water replace #game:water_and_air

# Don't leave pistons, just in case
execute at @e[type=minecraft:marker,tag=shop] run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:air replace minecraft:moving_piston

function #game:resources/scenes/lobby
execute as @a run function game:managers/players/spawn

schedule clear #game:events/check_teams
schedule clear #game:events/check_players
