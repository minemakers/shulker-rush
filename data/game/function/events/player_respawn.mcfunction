scoreboard players operation #respawn var = @s respawn_timer
scoreboard players operation #respawn var %= #20 const

spectate
execute if entity @s[team=red] run spectate @e[type=minecraft:block_display,tag=spawnpoint,tag=red,limit=1]
execute if entity @s[team=blue] run spectate @e[type=minecraft:block_display,tag=spawnpoint,tag=blue,limit=1]
execute if entity @s[team=green] run spectate @e[type=minecraft:block_display,tag=spawnpoint,tag=green,limit=1]
execute if entity @s[team=yellow] run spectate @e[type=minecraft:block_display,tag=spawnpoint,tag=yellow,limit=1]

execute if score #respawn var matches 0 run function game:resources/views/screen/respawning
execute if score @s respawn_timer matches 0 run function game:managers/players/respawn

scoreboard players remove @s[scores={respawn_timer=1..}] respawn_timer 1
