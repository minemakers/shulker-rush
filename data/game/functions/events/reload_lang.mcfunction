data remove storage game:core trades
data remove storage game:core messages
function game:resources/lang/en

data modify block 0 -1 0 Command set from storage game:core i18n[0].function
data modify block 0 -1 0 auto set value 1

schedule function game:resources/views/lobby/credits 2t replace
schedule function game:resources/views/lobby/options 2t replace
schedule function game:resources/views/lobby/formatters/rules 2t replace
schedule function game:resources/views/lobby/formatters/arena 2t replace