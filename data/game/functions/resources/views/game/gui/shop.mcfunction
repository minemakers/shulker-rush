loot replace block ~ ~ ~ container.0 loot game:contents/shops/wooden_sword
loot replace block ~ ~ ~ container.1 loot game:contents/shops/stone_sword
loot replace block ~ ~ ~ container.2 loot game:contents/shops/iron_sword
loot replace block ~ ~ ~ container.3 loot game:contents/shops/golden_sword
loot replace block ~ ~ ~ container.4 loot game:contents/shops/fishing_rod

loot replace block ~ ~ ~ container.9 loot game:contents/shops/chainmail_armor
loot replace block ~ ~ ~ container.10 loot game:contents/shops/iron_armor
loot replace block ~ ~ ~ container.11 loot game:contents/shops/diamond_armor
loot replace block ~ ~ ~ container.12 loot game:contents/shops/elytra
loot replace block ~ ~ ~ container.13 loot game:contents/shops/firework_rocket

loot replace block ~ ~ ~ container.18 loot game:contents/shops/bow
loot replace block ~ ~ ~ container.19 loot game:contents/shops/super_bow
loot replace block ~ ~ ~ container.20 loot game:contents/shops/crossbow
loot replace block ~ ~ ~ container.21 loot game:contents/shops/arrow
loot replace block ~ ~ ~ container.22 loot game:contents/shops/ender_pearl

loot replace block ~ ~ ~ container.6 loot game:contents/shops/explosive_bottle
loot replace block ~ ~ ~ container.7 loot game:contents/shops/golden_axe
loot replace block ~ ~ ~ container.8 loot game:contents/shops/diamond_pickaxe
loot replace block ~ ~ ~ container.15 loot game:contents/shops/stained_glass
loot replace block ~ ~ ~ container.16 loot game:contents/shops/oak_planks
loot replace block ~ ~ ~ container.17 loot game:contents/shops/end_stone
loot replace block ~ ~ ~ container.24 loot game:contents/shops/shulker_picker
loot replace block ~ ~ ~ container.25 loot game:contents/shops/scaffolding
loot replace block ~ ~ ~ container.26 loot game:contents/shops/ancient_debris

item replace block ~ ~ ~ container.5 with minecraft:black_stained_glass_pane[custom_name='""',custom_data={shop_id:{}}]
item replace block ~ ~ ~ container.14 with minecraft:black_stained_glass_pane[custom_name='""',custom_data={shop_id:{}}]
item replace block ~ ~ ~ container.23 with minecraft:black_stained_glass_pane[custom_name='""',custom_data={shop_id:{}}]

data modify entity @s[type=minecraft:marker] data.Items set from block ~ ~ ~ Items
