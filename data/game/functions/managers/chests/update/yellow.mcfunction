data modify storage game:tmp chests.yellow set from entity @s EnderItems
data modify block 0 0 0 Items set from storage game:tmp chests.yellow
loot replace entity @a[team=yellow] enderchest.0 26 mine 0 0 0 minecraft:air{contents:1b}