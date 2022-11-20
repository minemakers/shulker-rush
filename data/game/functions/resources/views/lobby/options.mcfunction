data modify block 0 1 0 Text1 set value '[{"storage":"game:lang","nbt":"game_launcher","color":"yellow","bold":true}]'
data modify entity @e[type=minecraft:armor_stand,tag=lang.game_launcher,limit=1] CustomName set from block 0 1 0 Text1

data modify block 0 1 0 Text1 set value '[{"storage":"game:lang","nbt":"lang_picker","color":"blue","bold":true}]'
data modify entity @e[type=minecraft:armor_stand,tag=lang.lang_picker,limit=1] CustomName set from block 0 1 0 Text1

data modify block 0 1 0 Text1 set value '[{"storage":"game:lang","nbt":"click_me","color":"gray"}]'
execute as @e[type=minecraft:armor_stand,tag=lang.click_me] run data modify entity @s CustomName set from block 0 1 0 Text1

data merge block 5000 214 6 {Text2:'{"storage":"game:lang","nbt":"arena_picker","color":"white","bold":true}',Text3:'{"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}'}
