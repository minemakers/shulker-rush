execute if entity @s[advancements={game:join_team={random=true}}] run function game:managers/players/join_random

execute if entity @s[advancements={game:join_team={red=true}}] run team join red @s
execute if entity @s[advancements={game:join_team={blue=true}}] run team join blue @s
execute if entity @s[advancements={game:join_team={green=true}}] run team join green @s
execute if entity @s[advancements={game:join_team={yellow=true}}] run team join yellow @s

function game:events/countdown

gamemode spectator @s[team=players]
execute if entity @s[team=players] run function game:managers/players/spawn

execute if entity @s[team=red] at @e[type=minecraft:villager,tag=red] positioned ^ ^ ^-4 run tp @s ~ ~ ~ ~ ~7
execute if entity @s[team=blue] at @e[type=minecraft:villager,tag=blue] positioned ^ ^ ^-4 run tp @s ~ ~ ~ ~ ~7
execute if entity @s[team=green] at @e[type=minecraft:villager,tag=green] positioned ^ ^ ^-4 run tp @s ~ ~ ~ ~ ~7
execute if entity @s[team=yellow] at @e[type=minecraft:villager,tag=yellow] positioned ^ ^ ^-4 run tp @s ~ ~ ~ ~ ~7

tellraw @s[team=red] [{"storage":"game:lang","nbt":"join_team.red","color":"red","bold":true}]
tellraw @s[team=blue] [{"storage":"game:lang","nbt":"join_team.blue","color":"dark_aqua","bold":true}]
tellraw @s[team=green] [{"storage":"game:lang","nbt":"join_team.green","color":"green","bold":true}]
tellraw @s[team=yellow] [{"storage":"game:lang","nbt":"join_team.yellow","color":"yellow","bold":true}]
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 .8