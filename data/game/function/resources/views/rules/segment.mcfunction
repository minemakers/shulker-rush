execute if data storage game:core rules.section[0][0].text run function game:resources/views/rules/segments/text
execute if data storage game:core rules.section[0][0].strong run function game:resources/views/rules/segments/strong
execute if data storage game:core rules.section[0][0].ref run function game:resources/views/rules/segments/ref

data remove storage game:core rules.section[0][0]
execute if data storage game:core rules.section[0][0] run function game:resources/views/rules/segment
