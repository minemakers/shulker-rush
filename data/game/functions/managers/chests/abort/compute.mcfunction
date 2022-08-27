data modify storage game:tmp chests.source set from entity @s EnderItems

execute if entity @s[team=red] run data modify storage game:tmp chests.target set from storage game:tmp chests.red
execute if entity @s[team=blue] run data modify storage game:tmp chests.target set from storage game:tmp chests.blue
execute if entity @s[team=green] run data modify storage game:tmp chests.target set from storage game:tmp chests.green
execute if entity @s[team=yellow] run data modify storage game:tmp chests.target set from storage game:tmp chests.yellow

data modify block 0 0 0 Items set value []
scoreboard players set #source.slot var -1
scoreboard players set #target.slot var 100
function #game:managers/chests/abort/slots/next
loot give @s mine 0 0 0 minecraft:air{contents:1b}
function #game:events/save_inventory