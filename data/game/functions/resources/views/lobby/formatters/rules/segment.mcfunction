execute if data storage game:core messages.rules.lines[0][0].text run function game:resources/views/lobby/formatters/rules/segments/text
execute if data storage game:core messages.rules.lines[0][0].strong run function game:resources/views/lobby/formatters/rules/segments/strong
execute if data storage game:core messages.rules.lines[0][0].ref run function game:resources/views/lobby/formatters/rules/segments/ref

data remove storage game:core messages.rules.lines[0][0]
execute if data storage game:core messages.rules.lines[0][0] run function game:resources/views/lobby/formatters/rules/segment