execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] run function game:resources/views/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] run scoreboard players operation @s souls -= #cost.souls var
