execute if data storage game:tmp messages.rules.lines[0][0].text run function game:resources/views/rules/formatters/segments/text
execute if data storage game:tmp messages.rules.lines[0][0].strong run function game:resources/views/rules/formatters/segments/strong
execute if data storage game:tmp messages.rules.lines[0][0].ref run function game:resources/views/rules/formatters/segments/ref

data remove storage game:tmp messages.rules.lines[0][0]
execute if data storage game:tmp messages.rules.lines[0][0] run function game:resources/views/rules/formatters/segment