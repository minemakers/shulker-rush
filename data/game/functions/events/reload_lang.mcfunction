data remove storage game:tmp trades
data remove storage game:tmp messages
data remove storage game:lang rules
data remove storage game:lang suicide

setblock 0 50 0 minecraft:command_block
setblock 0 52 0 minecraft:command_block{Command:"fill 0 50 0 0 52 0 minecraft:air"}
data modify block 0 50 0 Command set from storage game:lang _current_lang.function
setblock 0 51 0 minecraft:redstone_block

schedule function game:resources/views/rules/format 2t replace
schedule function game:resources/views/lobby_options 2t replace
schedule function game:resources/views/credits/translate 2t replace
schedule function game:resources/views/sequences/arena_picker/reset 2t replace