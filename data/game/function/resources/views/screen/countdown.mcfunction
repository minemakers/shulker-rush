title @a times 0 50 10
title @a title [{"text":"Shulker Rush II","color":"light_purple"}]

execute if score $countdown var matches 0 run title @a subtitle [{"storage":"game:lang","nbt":"countdown.0","color":"gray"}]
execute if score $countdown var matches 0 as @a at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 100000 0.8

execute if score $countdown var matches 1 run title @a subtitle [{"storage":"game:lang","nbt":"countdown.1[0]","color":"gray"},{"score":{"name":"$countdown","objective":"var"}},{"storage":"game:lang","nbt":"countdown.1[1]"}]
execute if score $countdown var matches 2.. run title @a subtitle [{"storage":"game:lang","nbt":"countdown.2[0]","color":"gray"},{"score":{"name":"$countdown","objective":"var"}},{"storage":"game:lang","nbt":"countdown.2[1]"}]
execute if score $countdown var matches 1.. as @a at @s run playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 1 1.7
