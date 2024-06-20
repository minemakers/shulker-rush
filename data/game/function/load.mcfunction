data remove storage game:core trades
data remove storage game:core messages

function game:init
function #game:resources/config
function #game:resources/lang/en

execute unless score $arena var matches 0.. run scoreboard players set $arena var 1
execute unless score $status var matches 0.. run scoreboard players set $status var 0
