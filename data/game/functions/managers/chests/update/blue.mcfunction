data modify storage game:tmp chests.blue set from entity @s EnderItems
data modify block 0 0 0 Items set from storage game:tmp chests.blue
loot replace entity @a[team=blue] enderchest.0 27 mine 0 0 0 minecraft:air{contents:1b}