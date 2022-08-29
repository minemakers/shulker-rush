data modify storage game:core chests.red set from entity @s EnderItems
data modify block 0 0 0 Items set from storage game:core chests.red
loot replace entity @a[team=red] enderchest.0 27 mine 0 0 0 minecraft:air{contents:1b}
