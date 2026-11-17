item modify entity @e[type=minecraft:item_display,tag=sr.arena_head] container.0 sr:arena

execute if score $arena sr.var matches 1 at @e[type=minecraft:text_display,tag=sr.arena1] run tp @e[type=minecraft:item_display,tag=sr.picker_arrow,sort=nearest,limit=1] ~ ~1.6 ~.35 0 0
execute if score $arena sr.var matches 2 at @e[type=minecraft:text_display,tag=sr.arena2] run tp @e[type=minecraft:item_display,tag=sr.picker_arrow,sort=nearest,limit=1] ~.15 ~1.6 ~.3 -20 0
execute if score $arena sr.var matches 3 at @e[type=minecraft:text_display,tag=sr.arena3] run tp @e[type=minecraft:item_display,tag=sr.picker_arrow,sort=nearest,limit=1] ~-.15 ~1.6 ~.3 20 0

execute as @e[type=minecraft:text_display,tag=sr.arena1] run data modify entity @s text set value [{"text":"","color":"green","bold":true},{"storage":"sr:lang","nbt":"arena.grassy_islands","interpret":true}]
execute as @e[type=minecraft:text_display,tag=sr.arena2] run data modify entity @s text set value [{"text":"","color":"aqua","bold":true},{"storage":"sr:lang","nbt":"arena.cloudy_gates","interpret":true}]
execute as @e[type=minecraft:text_display,tag=sr.arena3] run data modify entity @s text set value [{"text":"","color":"dark_purple","bold":true},{"storage":"sr:lang","nbt":"arena.mechanical_sky","interpret":true}]
execute as @e[type=minecraft:text_display,tag=sr.lang.2_teams] run data modify entity @s text set value {"storage":"sr:lang","nbt":"arena.teams.2","interpret":true}
execute as @e[type=minecraft:text_display,tag=sr.lang.4_teams] run data modify entity @s text set value {"storage":"sr:lang","nbt":"arena.teams.4","interpret":true}

function sr:resource/view/lobby/sequence/start
