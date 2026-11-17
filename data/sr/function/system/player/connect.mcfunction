clear @s
team join sr.players @s
execute if score $status sr.var matches ..1 run gamemode adventure @s
execute if score $status sr.var matches 2 run gamemode spectator @s
function sr:system/player/spawn

title @s times 5 50 5
title @s subtitle [{"text":"Shulker Rush II","color":"gray"}]
title @s title [{"storage":"sr:lang","nbt":"greetings","interpret":true,"color":"light_purple"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1000000
