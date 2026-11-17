data remove storage sr:core trades
data remove storage sr:core messages

function sr:init
function sr:resource/config
function sr:resource/lang/en

execute unless score $arena sr.var matches 0.. run scoreboard players set $arena sr.var 1
execute unless score $status sr.var matches 0.. run scoreboard players set $status sr.var 0

# The lobby animation chains its own schedule: restart it, a world that lost its schedule would stay frozen.
execute if score $status sr.var matches 0 run function sr:resource/view/lobby/sequence/start
