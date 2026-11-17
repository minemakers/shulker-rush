loot replace block ~ ~ ~ container.0 loot sr:content/shop/wooden_sword
loot replace block ~ ~ ~ container.1 loot sr:content/shop/stone_sword
loot replace block ~ ~ ~ container.2 loot sr:content/shop/iron_sword
loot replace block ~ ~ ~ container.3 loot sr:content/shop/golden_sword
loot replace block ~ ~ ~ container.4 loot sr:content/shop/fishing_rod

loot replace block ~ ~ ~ container.9 loot sr:content/shop/chainmail_armor
loot replace block ~ ~ ~ container.10 loot sr:content/shop/iron_armor
loot replace block ~ ~ ~ container.11 loot sr:content/shop/diamond_armor
loot replace block ~ ~ ~ container.12 loot sr:content/shop/elytra
loot replace block ~ ~ ~ container.13 loot sr:content/shop/firework_rocket

loot replace block ~ ~ ~ container.18 loot sr:content/shop/bow
loot replace block ~ ~ ~ container.19 loot sr:content/shop/super_bow
loot replace block ~ ~ ~ container.20 loot sr:content/shop/crossbow
loot replace block ~ ~ ~ container.21 loot sr:content/shop/arrow
loot replace block ~ ~ ~ container.22 loot sr:content/shop/ender_pearl

loot replace block ~ ~ ~ container.6 loot sr:content/shop/explosive_bottle
loot replace block ~ ~ ~ container.7 loot sr:content/shop/golden_axe
loot replace block ~ ~ ~ container.8 loot sr:content/shop/diamond_pickaxe
loot replace block ~ ~ ~ container.15 loot sr:content/shop/stained_glass
loot replace block ~ ~ ~ container.16 loot sr:content/shop/oak_planks
loot replace block ~ ~ ~ container.17 loot sr:content/shop/end_stone
loot replace block ~ ~ ~ container.24 loot sr:content/shop/shulker_picker
loot replace block ~ ~ ~ container.25 loot sr:content/shop/scaffolding
loot replace block ~ ~ ~ container.26 loot sr:content/shop/ancient_debris

item replace block ~ ~ ~ container.5 with minecraft:black_stained_glass_pane[custom_name="",custom_data={shop_id:{}}]
item replace block ~ ~ ~ container.14 with minecraft:black_stained_glass_pane[custom_name="",custom_data={shop_id:{}}]
item replace block ~ ~ ~ container.23 with minecraft:black_stained_glass_pane[custom_name="",custom_data={shop_id:{}}]

data modify entity @s[type=minecraft:marker] data.Items set from block ~ ~ ~ Items
execute store result score @s sr.menu if items block ~ ~ ~ container.* *[minecraft:custom_data~{shop_id:{}}]
