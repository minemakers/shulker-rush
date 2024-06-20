data modify storage game:core chests.yellow set from entity @s EnderItems
data modify block 0 0 0 Items set from storage game:core chests.yellow
loot replace entity @a[team=yellow] enderchest.0 27 mine 0 0 0 minecraft:anvil[custom_data={drop_contents:1b}]
