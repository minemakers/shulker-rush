data remove storage game:core trades
data remove storage game:core messages

function game:init
function #game:resources/config
function #game:resources/lang/en

execute unless score $arena var matches 0.. run scoreboard players set $arena var 1
execute unless score $status var matches 0.. run scoreboard players set $status var 0

schedule function #game:events/server_config 2t
data modify block 0 -1 0 Command set value "/schedule clear #game:events/server_config"
data modify block 0 -1 0 auto set value 1
