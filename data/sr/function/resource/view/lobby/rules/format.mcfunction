data modify block 0 1 0 front_text.messages[0] set value {"text":""}
data modify block 0 1 0 front_text.messages[1] set value {"text":""}
data modify storage sr:core rules.section set from storage sr:lang rules.objective
function sr:resource/view/lobby/rules/line
data modify storage sr:lang rules.objective set from block 0 1 0 front_text.messages[0]
data modify block 0 1 0 front_text.messages[1] set value [{"nbt":"front_text.messages[1]","block":"0 1 0","interpret":true},{"text":"\n\n"}]

data modify block 0 1 0 front_text.messages[0] set value {"text":""}
data modify storage sr:core rules.section set from storage sr:lang rules.spawners
function sr:resource/view/lobby/rules/line
data modify storage sr:lang rules.spawners set from block 0 1 0 front_text.messages[0]
data modify block 0 1 0 front_text.messages[1] set value [{"nbt":"front_text.messages[1]","block":"0 1 0","interpret":true},{"text":"\n\n"}]

data modify block 0 1 0 front_text.messages[0] set value {"text":""}
data modify storage sr:core rules.section set from storage sr:lang rules.upgrades
function sr:resource/view/lobby/rules/line
data modify storage sr:lang rules.upgrades set from block 0 1 0 front_text.messages[0]
data modify storage sr:lang rules.full set from block 0 1 0 front_text.messages[1]
