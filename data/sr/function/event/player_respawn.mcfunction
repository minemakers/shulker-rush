scoreboard players operation #respawn sr.var = @s sr.respawn_timer
scoreboard players operation #respawn sr.var %= #20 sr.const

spectate
execute store result score #team sr.var run compute entity @s integer sr:team
spectate @e[type=minecraft:block_display,tag=sr.spawnpoint,predicate=sr:same_team,limit=1]

execute if score #respawn sr.var matches 0 run function sr:resource/view/game/respawning
execute if score @s sr.respawn_timer matches 0 run function sr:system/player/respawn

scoreboard players remove @s[scores={sr.respawn_timer=1..}] sr.respawn_timer 1

advancement revoke @s only sr:player_respawn
