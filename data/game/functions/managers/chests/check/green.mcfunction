data modify storage game:core chests.check set from storage game:core chests.green
execute store success score #success var run data modify storage game:core chests.check set from entity @s EnderItems
execute if score #success var matches 1 run function game:managers/chests/check/lock/green
