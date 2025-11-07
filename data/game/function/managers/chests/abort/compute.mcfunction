data modify storage game:core chests.source set from entity @s EnderItems

execute if entity @s[team=red] run data modify storage game:core chests.target set from storage game:core chests.red
execute if entity @s[team=blue] run data modify storage game:core chests.target set from storage game:core chests.blue
execute if entity @s[team=green] run data modify storage game:core chests.target set from storage game:core chests.green
execute if entity @s[team=yellow] run data modify storage game:core chests.target set from storage game:core chests.yellow

loot replace block 0 0 0 container.0 27 loot {}
scoreboard players set #source.slot var 100
scoreboard players set #target.slot var 100
function game:managers/chests/abort/slots/next

item replace entity @s player.cursor with minecraft:air
loot give @s mine 0 0 0 minecraft:stick[custom_data={drop_contents:1b}]
function #game:events/save_inventory with entity @s
