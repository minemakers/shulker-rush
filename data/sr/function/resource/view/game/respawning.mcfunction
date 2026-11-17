title @s times 0 50 10
title @s title [{"text":"Shulker Rush II","color":"light_purple"}]

scoreboard players operation #respawn sr.var = @s sr.respawn_timer
scoreboard players operation #respawn sr.var /= #20 sr.const

execute if score #respawn sr.var matches 1 run title @s subtitle [{"storage":"sr:lang","nbt":"respawning.1[0]","interpret":true,"color":"gray"},{"score":{"name":"#respawn","objective":"sr.var"}},{"storage":"sr:lang","nbt":"respawning.1[1]","interpret":true}]
execute if score #respawn sr.var matches 2.. run title @s subtitle [{"storage":"sr:lang","nbt":"respawning.2[0]","interpret":true,"color":"gray"},{"score":{"name":"#respawn","objective":"sr.var"}},{"storage":"sr:lang","nbt":"respawning.2[1]","interpret":true}]
execute if score #respawn sr.var matches 1.. at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 1 1.7

execute if score #respawn sr.var matches 0 run title @s clear
execute if score #respawn sr.var matches 0 at @s run playsound minecraft:ambient.underwater.exit master @s ~ ~ ~ 1 1
