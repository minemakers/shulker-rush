scoreboard players remove @s shulkerHealth 1

execute if entity @s[team=red] run scoreboard players operation @e[type=minecraft:marker,tag=upgrader,tag=red] shulkerHealth = @s shulkerHealth
execute if entity @s[team=blue] run scoreboard players operation @e[type=minecraft:marker,tag=upgrader,tag=blue] shulkerHealth = @s shulkerHealth
execute if entity @s[team=green] run scoreboard players operation @e[type=minecraft:marker,tag=upgrader,tag=green] shulkerHealth = @s shulkerHealth
execute if entity @s[team=yellow] run scoreboard players operation @e[type=minecraft:marker,tag=upgrader,tag=yellow] shulkerHealth = @s shulkerHealth

function game:resources/views/game/shulker
execute if score @s shulkerHealth matches ..0 run function game:managers/shulkers/death
