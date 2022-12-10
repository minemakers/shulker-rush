# Configure arena names
data modify storage game:core style set value '{"text":"","color":"green","bold":true}'
data modify block 0 10 0 Text1 set value '[{"storage":"game:core","nbt":"style","interpret":true},{"storage":"game:lang","nbt":"arena.grassy_islands"}]'
data modify entity @e[type=minecraft:armor_stand,tag=arena1,limit=1] CustomName set from block 0 10 0 Text1
execute if score $arena var matches 1 run data modify block 0 10 0 Text2 set value '[{"storage":"game:core","nbt":"style","interpret":true},"→ ",{"block":"0 10 0","nbt":"Text1","interpret":true}," ←"]'
execute if score $arena var matches 1 run data modify block 0 10 0 Text3 set value '[{"storage":"game:core","nbt":"style","interpret":true}," →",{"block":"0 10 0","nbt":"Text1","interpret":true},"← "]'

data modify storage game:core style set value '{"text":"","color":"aqua","bold":true}'
data modify block 0 10 0 Text1 set value '[{"storage":"game:core","nbt":"style","interpret":true},{"storage":"game:lang","nbt":"arena.cloudy_gates"}]'
data modify entity @e[type=minecraft:armor_stand,tag=arena2,limit=1] CustomName set from block 0 10 0 Text1
execute if score $arena var matches 2 run data modify block 0 10 0 Text2 set value '[{"storage":"game:core","nbt":"style","interpret":true},"→ ",{"block":"0 10 0","nbt":"Text1","interpret":true}," ←"]'
execute if score $arena var matches 2 run data modify block 0 10 0 Text3 set value '[{"storage":"game:core","nbt":"style","interpret":true}," →",{"block":"0 10 0","nbt":"Text1","interpret":true},"← "]'

data modify storage game:core style set value '{"text":"","color":"dark_purple","bold":true}'
data modify block 0 10 0 Text1 set value '[{"storage":"game:core","nbt":"style","interpret":true},{"storage":"game:lang","nbt":"arena.mechanical_sky"}]'
data modify entity @e[type=minecraft:armor_stand,tag=arena3,limit=1] CustomName set from block 0 10 0 Text1
execute if score $arena var matches 3 run data modify block 0 10 0 Text2 set value '[{"storage":"game:core","nbt":"style","interpret":true},"→ ",{"block":"0 10 0","nbt":"Text1","interpret":true}," ←"]'
execute if score $arena var matches 3 run data modify block 0 10 0 Text3 set value '[{"storage":"game:core","nbt":"style","interpret":true}," →",{"block":"0 10 0","nbt":"Text1","interpret":true},"← "]'

# Text "# teams"
data modify block 0 1 0 Text4 set value '{"storage":"game:lang","nbt":"arena.teams.2"}'
execute as @e[type=minecraft:armor_stand,tag=lang.2_teams] run data modify entity @s CustomName set from block 0 1 0 Text4
data modify block 0 1 0 Text4 set value '{"storage":"game:lang","nbt":"arena.teams.4"}'
execute as @e[type=minecraft:armor_stand,tag=lang.4_teams] run data modify entity @s CustomName set from block 0 1 0 Text4

# Restart the selected arena name sequence
schedule function game:resources/views/lobby/sequences/arena1 1t
