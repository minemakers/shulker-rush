scoreboard players reset @s confirm
advancement revoke @s only game:stop_game

scoreboard players set $status var 0

clear @a
team join players @a
gamemode adventure @a

scoreboard players reset * playerId
scoreboard players reset * killCount
scoreboard players reset * deathCount
scoreboard players reset * armorLevel
scoreboard players reset * swordLevel

function #game:resources/scenes/lobby
execute as @a run function #game:managers/players/spawn

fill 996 238 42 991 237 51 water replace air
fill 992 238 52 996 237 53 water replace air
fill 1016 238 42 1021 238 51 water replace air
fill 1020 238 52 1016 238 53 water replace air

execute as @e[type=marker,tag=useable_blocks] at @s if entity @s[y=309,dy=50] run tp @s ~ 307 ~
execute at @e[type=marker,tag=useable_blocks] run fill ~12 ~12 ~12 ~-12 ~-12 ~-12 air replace #game:useable