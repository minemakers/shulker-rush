execute unless data storage sr:lang rules.full run function sr:resource/view/lobby/rules/format

execute as @e[type=minecraft:text_display,tag=sr.lang.rules.objective] run data modify entity @s text set from storage sr:lang rules.objective
execute as @e[type=minecraft:text_display,tag=sr.lang.rules.spawners] run data modify entity @s text set from storage sr:lang rules.spawners
execute as @e[type=minecraft:text_display,tag=sr.lang.rules.upgrades] run data modify entity @s text set from storage sr:lang rules.upgrades
