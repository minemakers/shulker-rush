execute if data storage sr:core rules.section[0][0].text run function sr:resource/view/lobby/rules/segment/text
execute if data storage sr:core rules.section[0][0].strong run function sr:resource/view/lobby/rules/segment/strong
execute if data storage sr:core rules.section[0][0].ref run function sr:resource/view/lobby/rules/segment/ref

data remove storage sr:core rules.section[0][0]
execute if data storage sr:core rules.section[0][0] run function sr:resource/view/lobby/rules/segment
