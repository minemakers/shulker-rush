data remove block 0 1 0 Text1
data remove block 0 1 0 Text2
data modify storage game:core rules.section set from storage game:lang rules.objective
function game:resources/views/rules/line
data modify storage game:lang rules.objective set from block 0 1 0 Text1
data modify block 0 1 0 Text2 set value '[{"nbt":"Text2","block":"0 1 0","interpret":true},{"text":"\\n\\n"}]'

data remove block 0 1 0 Text1
data modify storage game:core rules.section set from storage game:lang rules.spawners
function game:resources/views/rules/line
data modify storage game:lang rules.spawners set from block 0 1 0 Text1
data modify block 0 1 0 Text2 set value '[{"nbt":"Text2","block":"0 1 0","interpret":true},{"text":"\\n\\n"}]'

data remove block 0 1 0 Text1
data modify storage game:core rules.section set from storage game:lang rules.upgrades
function game:resources/views/rules/line
data modify storage game:lang rules.upgrades set from block 0 1 0 Text1
data modify storage game:lang rules.full set from block 0 1 0 Text2
