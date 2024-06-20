scoreboard players remove @s shulker_health 1

execute if entity @s[team=red] run scoreboard players operation @e[type=minecraft:marker,tag=upgrader,tag=red] shulker_health = @s shulker_health
execute if entity @s[team=blue] run scoreboard players operation @e[type=minecraft:marker,tag=upgrader,tag=blue] shulker_health = @s shulker_health
execute if entity @s[team=green] run scoreboard players operation @e[type=minecraft:marker,tag=upgrader,tag=green] shulker_health = @s shulker_health
execute if entity @s[team=yellow] run scoreboard players operation @e[type=minecraft:marker,tag=upgrader,tag=yellow] shulker_health = @s shulker_health

function game:resources/views/game/shulker
execute if score @s shulker_health matches ..0 run function game:managers/shulkers/death
