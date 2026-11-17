scoreboard players reset @s sr.dead
gamemode spectator @s
function sr:system/player/loot
scoreboard players set #killed sr.var 0
execute on attacker if entity @s[type=minecraft:player,scores={sr.player_id=0..}] run scoreboard players set #killed sr.var 1
execute if score #killed sr.var matches 0 run function sr:event/killed_by_self
tag @s add sr.victim
execute if score #killed sr.var matches 1 on attacker run function sr:event/killed_player
tag @s remove sr.victim

execute store result score #team sr.var run compute entity @s integer sr:team
effect give @e[type=minecraft:shulker,predicate=sr:same_team] minecraft:glowing 5 0 true
execute if score #team sr.var matches 1.. unless entity @e[type=minecraft:shulker,predicate=sr:same_team] run function sr:event/player_eliminated

scoreboard players operation @s[team=!sr.players] sr.respawn_timer = $timer.respawn sr.config
