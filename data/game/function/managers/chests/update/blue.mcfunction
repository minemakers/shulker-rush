data modify storage game:core chests.blue set from entity @s EnderItems
data modify block 0 0 0 Items set from storage game:core chests.blue
loot replace entity @a[team=blue] enderchest.0 27 mine 0 0 0 minecraft:anvil[custom_data={drop_contents:1b}]
