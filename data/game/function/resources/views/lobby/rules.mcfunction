execute unless data storage game:lang rules.full run function game:resources/views/rules/format

execute as @e[type=minecraft:text_display,tag=lang.rules.objective] run data modify entity @s text set from storage game:lang rules.objective
execute as @e[type=minecraft:text_display,tag=lang.rules.spawners] run data modify entity @s text set from storage game:lang rules.spawners
execute as @e[type=minecraft:text_display,tag=lang.rules.upgrades] run data modify entity @s text set from storage game:lang rules.upgrades
