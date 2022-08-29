function game:init
function game:resources/config

execute unless score $arena var matches 0.. run scoreboard players set $arena var 1
execute unless score $status var matches 0.. run scoreboard players set $status var 0

data remove storage game:core i18n
data modify storage game:core i18n append value {"name":"English", "function": "function #game:resources/lang/en"}
data modify storage game:core i18n append value {"name":"French", "function": "function #game:resources/lang/fr"}
data modify storage game:core i18n append value {"name":"Russian", "function": "function #game:resources/lang/ru"}

# Add a check for the language list
# And only reload when it actually changed
function #game:events/reload_lang