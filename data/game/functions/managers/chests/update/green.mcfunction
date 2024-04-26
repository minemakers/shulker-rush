data modify storage game:core chests.green set from entity @s EnderItems
data modify block 0 0 0 Items set from storage game:core chests.green
loot replace entity @a[team=green] enderchest.0 27 mine 0 0 0 minecraft:anvil[custom_data={drop_contents:1b}]
