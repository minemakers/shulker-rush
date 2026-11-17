execute store result score #timer.gold sr.var run compute entity @s integer sr:upgrader/spawner_bonus/gold
execute store result score #timer.iron sr.var run compute entity @s integer sr:upgrader/spawner_bonus/iron

loot replace block ~ ~ ~ container.0 loot sr:content/upgrader/shulker_health
loot replace block ~ ~ ~ container.1 loot sr:content/upgrader/enhanced_shulker
loot replace block ~ ~ ~ container.2 loot sr:content/upgrader/sharpened_sword
loot replace block ~ ~ ~ container.3 loot sr:content/upgrader/reinforced_armor
loot replace block ~ ~ ~ container.4 loot sr:content/upgrader/improved_spawner

data modify entity @s[type=minecraft:marker] data.Items set from block ~ ~ ~ Items
execute store result score @s sr.menu if items block ~ ~ ~ container.* *[minecraft:custom_data~{upgrade_id:{}}]
