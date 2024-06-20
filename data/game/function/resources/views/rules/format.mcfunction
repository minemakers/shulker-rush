data modify block 0 1 0 front_text.messages[0] set value '{"text":""}'
data modify block 0 1 0 front_text.messages[1] set value '{"text":""}'
data modify storage game:core rules.section set from storage game:lang rules.objective
function game:resources/views/rules/line
data modify storage game:lang rules.objective set from block 0 1 0 front_text.messages[0]
data modify block 0 1 0 front_text.messages[1] set value '[{"nbt":"front_text.messages[1]","block":"0 1 0","interpret":true},{"text":"\\n\\n"}]'

data modify block 0 1 0 front_text.messages[0] set value '{"text":""}'
data modify storage game:core rules.section set from storage game:lang rules.spawners
function game:resources/views/rules/line
data modify storage game:lang rules.spawners set from block 0 1 0 front_text.messages[0]
data modify block 0 1 0 front_text.messages[1] set value '[{"nbt":"front_text.messages[1]","block":"0 1 0","interpret":true},{"text":"\\n\\n"}]'

data modify block 0 1 0 front_text.messages[0] set value '{"text":""}'
data modify storage game:core rules.section set from storage game:lang rules.upgrades
function game:resources/views/rules/line
data modify storage game:lang rules.upgrades set from block 0 1 0 front_text.messages[0]
data modify storage game:lang rules.full set from block 0 1 0 front_text.messages[1]
