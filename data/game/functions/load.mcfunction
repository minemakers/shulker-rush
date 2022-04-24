function game:init
function game:resources/config

data remove storage game:tmp trades
data remove storage game:tmp messages
execute unless score $lang var matches 0.. run scoreboard players set $lang var 0
execute unless score $arena var matches 0.. run scoreboard players set $arena var 1
execute unless score $status var matches 0.. run scoreboard players set $status var 0

data remove storage game:lang rules
data remove storage game:lang suicide
execute if score $lang var matches 0 run function game:resources/lang/en
execute if score $lang var matches 1 run function game:resources/lang/fr