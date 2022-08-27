data remove storage game:tmp trades
data remove storage game:tmp messages
data remove storage game:lang rules
data remove storage game:lang suicide

execute if score $lang var matches 0 run function #game:resources/lang/en
execute if score $lang var matches 1 run function #game:resources/lang/fr
execute if score $lang var matches 2 run function #game:resources/lang/ru

function #game:resources/views/rules/format
function #game:resources/views/lobby_options
