execute as @e[type=minecraft:text_display,tag=lang.game_launcher] run data modify entity @s text set value [{"storage":"game:lang","nbt":"game_launcher","color":"yellow","bold":true}]
execute as @e[type=minecraft:text_display,tag=lang.lang_picker] run data modify entity @s text set value [{"storage":"game:lang","nbt":"lang_picker","color":"blue","bold":true}]
execute as @e[type=minecraft:text_display,tag=lang.click_me] run data modify entity @s text set value [{"storage":"game:lang","nbt":"click_me","color":"gray"}]

data modify block 5000 214 6 front_text.messages[1] set value {"storage":"game:lang","nbt":"arena_picker","color":"white","bold":true}
data modify block 5000 214 6 front_text.messages[2] set value {"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}
