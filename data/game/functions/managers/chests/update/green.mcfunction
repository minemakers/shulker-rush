data modify storage game:tmp chests.green set from entity @s EnderItems
data modify block 0 0 0 Items set from storage game:tmp chests.green
loot replace entity @a[team=green] enderchest.0 26 mine 0 0 0 minecraft:air{contents:1b}