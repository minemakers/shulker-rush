function game:init
function game:resources/config

execute unless score $lang var matches 0.. run scoreboard players set $lang var 0
execute unless score $arena var matches 0.. run scoreboard players set $arena var 1
execute unless score $status var matches 0.. run scoreboard players set $status var 0



data remove storage game:lang _lang_list
# Register languages
function #game:resources/lang/register

# Add a check for the language list
# And only reload when it actually changed
function #game:events/reload_lang