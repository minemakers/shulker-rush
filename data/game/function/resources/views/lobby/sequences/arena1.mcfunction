execute if score $status var matches 0 run schedule function game:resources/views/lobby/sequences/arena2 12t replace

# Alternated animation for the selected arena
execute if score $arena var matches 1 as @e[type=minecraft:text_display,tag=arena1] run data modify entity @s text set value [{"text":"","color":"green","bold":true}," →",{"storage":"game:lang","nbt":"arena.grassy_islands"},"← "]
execute if score $arena var matches 2 as @e[type=minecraft:text_display,tag=arena2] run data modify entity @s text set value [{"text":"","color":"aqua","bold":true}," →",{"storage":"game:lang","nbt":"arena.cloudy_gates"},"← "]
execute if score $arena var matches 3 as @e[type=minecraft:text_display,tag=arena3] run data modify entity @s text set value [{"text":"","color":"dark_purple","bold":true}," →",{"storage":"game:lang","nbt":"arena.mechanical_sky"},"← "]
