data remove block 0 1 0 Text1
execute if data storage game:tmp messages.rules.lines[0][0] run function #game:resources/views/rules/formatters/segment
execute if score $status var matches 0 run function #game:resources/views/rules/floating/line

data remove storage game:tmp messages.rules.lines[0]
execute if data storage game:tmp messages.rules.lines[0] run data modify block 0 1 0 Text2 set value '[{"nbt":"Text2","block":"0 1 0","interpret":true},{"text":" "}]'
execute if data storage game:tmp messages.rules.lines[0] positioned ~ ~-.15 ~ run function #game:resources/views/rules/formatters/line