# @environment sr:unit
# @max_ticks 100
# Loading the pack restarts the lobby animation, even when the world lost its schedule.
await loaded 5000 216 0
schedule clear sr:resource/view/lobby/sequence/arena1
schedule clear sr:resource/view/lobby/sequence/arena2
data modify entity @e[type=minecraft:text_display,tag=sr.arena1,limit=1] text set value ""
function sr:load
# The steps point the arrows at the selected arena (" →name← ") and back ("→ name ←"): seeing both means it runs and chains.
await data entity @e[type=minecraft:text_display,tag=sr.arena1,limit=1] {text:{extra:[" →"]}}
await data entity @e[type=minecraft:text_display,tag=sr.arena1,limit=1] {text:{extra:["→ "]}}
