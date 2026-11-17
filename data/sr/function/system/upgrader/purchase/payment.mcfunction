execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2
execute as @e[type=minecraft:marker,tag=sr.upgrader,sort=nearest,limit=1] run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,sort=nearest,limit=1] run scoreboard players operation @s sr.souls -= #cost.souls sr.var

schedule function sr:resource/view/game/actionbar 1t
