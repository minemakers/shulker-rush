scoreboard players set $status var 2

clear @a
tag @a remove bit0
tag @a remove bit1
tag @a remove bit2
tag @a remove bit3
tag @a remove bit4
tag @a remove bit5
tag @a remove bit6

scoreboard players reset * playerId
scoreboard players set @a killCount 0
scoreboard players set @a deathCount 0
scoreboard players set @a armorLevel 0
scoreboard players set @a swordLevel 0

function game:resources/scenes/game
execute at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=red] run spawnpoint @a[team=red] ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=blue] run spawnpoint @a[team=blue] ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=green] run spawnpoint @a[team=green] ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=yellow] run spawnpoint @a[team=yellow] ~ ~ ~

data remove storage game:tmp players
execute as @a[team=!players,gamemode=!spectator] run function game:managers/players/respawn
execute as @a[team=!players,gamemode=!spectator] run function game:managers/players/initialize

schedule function game:events/check_teams 1t
schedule function game:managers/shulkers/powers 1t
schedule function game:resources/views/screen/actionbar 1t