execute if entity @s[advancements={sr:join_team={red=true}}] run team join sr.red @s
execute if entity @s[advancements={sr:join_team={blue=true}}] run team join sr.blue @s
execute if entity @s[advancements={sr:join_team={green=true}}] run team join sr.green @s
execute if entity @s[advancements={sr:join_team={yellow=true}}] run team join sr.yellow @s

function sr:state/teams/countdown

gamemode spectator @s[team=sr.players]
execute if entity @s[team=sr.players] run function sr:system/player/spawn

execute store result score #team sr.var run compute entity @s integer sr:team
execute at @e[type=minecraft:interaction,predicate=sr:same_team] positioned ^ ^ ^-4 run tp @s ~ ~ ~ ~ ~7
tellraw @s[team=sr.red] [{"storage":"sr:lang","nbt":"join_team.red","interpret":true,"color":"red","bold":true}]
tellraw @s[team=sr.blue] [{"storage":"sr:lang","nbt":"join_team.blue","interpret":true,"color":"dark_aqua","bold":true}]
tellraw @s[team=sr.green] [{"storage":"sr:lang","nbt":"join_team.green","interpret":true,"color":"green","bold":true}]
tellraw @s[team=sr.yellow] [{"storage":"sr:lang","nbt":"join_team.yellow","interpret":true,"color":"yellow","bold":true}]
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 .8

advancement revoke @s only sr:join_team
