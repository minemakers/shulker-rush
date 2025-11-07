execute if data storage game:core rules.section[0][0] run function game:resources/views/rules/segment
data remove storage game:core rules.section[0]

execute if data storage game:core rules.section[0] run data modify block 0 1 0 front_text.messages[0] set value [{"nbt":"front_text.messages[0]","block":"0 1 0","interpret":true},{"text":"\n"}]
execute if data storage game:core rules.section[0] run data modify block 0 1 0 front_text.messages[1] set value [{"nbt":"front_text.messages[1]","block":"0 1 0","interpret":true},{"text":" "}]
execute if data storage game:core rules.section[0] run function game:resources/views/rules/line
