function game:init
function game:resources/config

execute unless score $lang var matches 0.. run scoreboard players set $lang var 0
execute unless score $arena var matches 0.. run scoreboard players set $arena var 1
execute unless score $status var matches 0.. run scoreboard players set $status var 0

function game:events/reload_lang