kill @e[type=minecraft:armor_stand,tag=rules]
data remove block 0 1 0 Text2

# Format the "objective" section
data modify storage game:tmp messages.rules.lines set from storage game:lang rules.objective
execute positioned 5000 215 -12 run function game:resources/views/rules/formatters/line
data modify block 0 1 0 Text2 set value '[{"nbt":"Text2","block":"0 1 0","interpret":true},{"text":"\\n\\n"}]'

# Format the "spawners" section
data modify storage game:tmp messages.rules.lines set from storage game:lang rules.spawners
execute positioned 4991 215 -10 run function game:resources/views/rules/formatters/line
data modify block 0 1 0 Text2 set value '[{"nbt":"Text2","block":"0 1 0","interpret":true},{"text":"\\n\\n"}]'

# Format the "upgrades" section
data modify storage game:tmp messages.rules.lines set from storage game:lang rules.upgrades
execute positioned 5009 215 -10 run function game:resources/views/rules/formatters/line
data modify storage game:tmp messages.rules.formatted set from block 0 1 0 Text2