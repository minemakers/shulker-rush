clear @s
team join players @s
execute if score $status var matches ..1 run gamemode adventure @s
execute if score $status var matches 2 run gamemode spectator @s
function game:managers/players/spawn

title @s times 5 50 5
title @s subtitle [{"text":"Shulker Rush II","color":"gray"}]
title @s title [{"storage":"game:lang","nbt":"greetings","color":"light_purple"}]
execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1000000
