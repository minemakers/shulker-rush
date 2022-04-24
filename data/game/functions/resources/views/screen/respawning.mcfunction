title @s times 0 50 10
title @s title [{"text":"Shulker Rush II","color":"light_purple"}]

scoreboard players operation #respawn var = @s respawnTimer 
scoreboard players operation #respawn var /= #20 const

execute if score #respawn var matches 1 run title @s subtitle [{"storage":"game:lang","nbt":"respawning.1[0]","color":"gray"},{"score":{"name":"#respawn","objective":"var"}},{"storage":"game:lang","nbt":"respawning.1[1]"}]
execute if score #respawn var matches 2.. run title @s subtitle [{"storage":"game:lang","nbt":"respawning.2[0]","color":"gray"},{"score":{"name":"#respawn","objective":"var"}},{"storage":"game:lang","nbt":"respawning.2[1]"}]
execute if score #respawn var matches 1.. at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 1 1.7

execute if score #respawn var matches 0 run title @s clear
execute if score #respawn var matches 0 at @s run playsound minecraft:ambient.underwater.exit master @s ~ ~ ~ 1 1