data modify storage game:core chests.source set from entity @s EnderItems

execute if entity @s[team=red] run data modify storage game:core chests.target set from storage game:core chests.red
execute if entity @s[team=blue] run data modify storage game:core chests.target set from storage game:core chests.blue
execute if entity @s[team=green] run data modify storage game:core chests.target set from storage game:core chests.green
execute if entity @s[team=yellow] run data modify storage game:core chests.target set from storage game:core chests.yellow

data modify block 0 0 0 Items set value []
scoreboard players set #source.slot var -1
scoreboard players set #target.slot var 100
function game:managers/chests/abort/slots/next
loot give @s mine 0 0 0 minecraft:air{contents:1b}
function #game:events/save_inventory