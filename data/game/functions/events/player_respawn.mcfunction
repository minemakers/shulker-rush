advancement revoke @s only game:player_respawn

scoreboard players operation #respawn var = @s respawnTimer
scoreboard players operation #respawn var %= #20 const

execute if entity @s[team=red] run spectate @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=red,limit=1]
execute if entity @s[team=blue] run spectate @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=blue,limit=1]
execute if entity @s[team=green] run spectate @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=green,limit=1]
execute if entity @s[team=yellow] run spectate @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=yellow,limit=1]

execute if score #respawn var matches 0 run function #game:resources/views/screen/respawning
execute if score @s respawnTimer matches 0 run function #game:managers/players/respawn

scoreboard players remove @s[scores={respawnTimer=1..}] respawnTimer 1