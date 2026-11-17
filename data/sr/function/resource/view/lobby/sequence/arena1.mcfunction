execute if score $status sr.var matches 0 run schedule function sr:resource/view/lobby/sequence/arena2 12t replace

execute if score $arena sr.var matches 1 as @e[type=minecraft:text_display,tag=sr.arena1] run data modify entity @s text set value [{"text":"","color":"green","bold":true}," →",{"storage":"sr:lang","nbt":"arena.grassy_islands","interpret":true},"← "]
execute if score $arena sr.var matches 2 as @e[type=minecraft:text_display,tag=sr.arena2] run data modify entity @s text set value [{"text":"","color":"aqua","bold":true}," →",{"storage":"sr:lang","nbt":"arena.cloudy_gates","interpret":true},"← "]
execute if score $arena sr.var matches 3 as @e[type=minecraft:text_display,tag=sr.arena3] run data modify entity @s text set value [{"text":"","color":"dark_purple","bold":true}," →",{"storage":"sr:lang","nbt":"arena.mechanical_sky","interpret":true},"← "]
