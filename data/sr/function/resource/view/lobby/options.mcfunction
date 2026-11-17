execute as @e[type=minecraft:text_display,tag=sr.lang.game_launcher] run data modify entity @s text set value [{"storage":"sr:lang","nbt":"game_launcher","interpret":true,"color":"yellow","bold":true}]
execute as @e[type=minecraft:text_display,tag=sr.lang.lang_picker] run data modify entity @s text set value [{"storage":"sr:lang","nbt":"lang_picker","interpret":true,"color":"blue","bold":true}]
execute as @e[type=minecraft:text_display,tag=sr.lang.click_me] run data modify entity @s text set value [{"storage":"sr:lang","nbt":"click_me","interpret":true,"color":"gray"}]

data modify block 5000 214 6 front_text.messages[1] set value {"storage":"sr:lang","nbt":"arena_picker","interpret":true,"color":"white","bold":true}
data modify block 5000 214 6 front_text.messages[2] set value {"storage":"sr:lang","nbt":"click_here","interpret":true,"color":"gray","italic":true}
