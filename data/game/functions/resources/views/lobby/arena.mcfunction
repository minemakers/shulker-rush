# Change the displayed arena head
item modify entity @e[type=minecraft:item_display,tag=arena_head] container.0 game:arena

# Move the selected arena indicator
execute if score $arena var matches 1 at @e[type=minecraft:text_display,tag=arena1] run tp @e[type=minecraft:item_display,tag=picker_arrow,sort=nearest,limit=1] ~ ~1.6 ~.35 180 0
execute if score $arena var matches 2 at @e[type=minecraft:text_display,tag=arena2] run tp @e[type=minecraft:item_display,tag=picker_arrow,sort=nearest,limit=1] ~.15 ~1.6 ~.3 160 0
execute if score $arena var matches 3 at @e[type=minecraft:text_display,tag=arena3] run tp @e[type=minecraft:item_display,tag=picker_arrow,sort=nearest,limit=1] ~-.15 ~1.6 ~.3 200 0

# Reset arena names and text "# teams"
execute as @e[type=minecraft:text_display,tag=arena1] run data modify entity @s text set value '[{"text":"","color":"green","bold":true},{"storage":"game:lang","nbt":"arena.grassy_islands"}]'
execute as @e[type=minecraft:text_display,tag=arena2] run data modify entity @s text set value '[{"text":"","color":"aqua","bold":true},{"storage":"game:lang","nbt":"arena.cloudy_gates"}]'
execute as @e[type=minecraft:text_display,tag=arena3] run data modify entity @s text set value '[{"text":"","color":"dark_purple","bold":true},{"storage":"game:lang","nbt":"arena.mechanical_sky"}]'
execute as @e[type=minecraft:text_display,tag=lang.2_teams] run data modify entity @s text set value '{"storage":"game:lang","nbt":"arena.teams.2"}'
execute as @e[type=minecraft:text_display,tag=lang.4_teams] run data modify entity @s text set value '{"storage":"game:lang","nbt":"arena.teams.4"}'

# Restart the selected arena name sequence
schedule function game:resources/views/lobby/sequences/arena1 1t
