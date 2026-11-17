data modify storage sr:core i18n set value []
data modify storage sr:core i18n append value {"name":"English", "function": "sr:resource/lang/en"}
data modify storage sr:core i18n append value {"name":"French", "function": "sr:resource/lang/fr"}
data modify storage sr:core i18n append value {"name":"Russian", "function": "sr:resource/lang/ru"}

scoreboard players reset * sr.config

scoreboard players set $timer.respawn sr.config 100

scoreboard players set $timer.crystal sr.config 600
scoreboard players set $timer.gold.0 sr.config 250
scoreboard players set $timer.gold.1 sr.config 200
scoreboard players set $timer.gold.2 sr.config 150
scoreboard players set $timer.gold.3 sr.config 100
scoreboard players set $timer.iron.0 sr.config 40
scoreboard players set $timer.iron.1 sr.config 30
scoreboard players set $timer.iron.2 sr.config 25
scoreboard players set $timer.iron.3 sr.config 20

scoreboard players set $cost.enhanced_shulker.1 sr.config 3
scoreboard players set $cost.enhanced_shulker.2 sr.config 4
scoreboard players set $cost.enhanced_shulker.3 sr.config 6
scoreboard players set $cost.improved_spawner.1 sr.config 2
scoreboard players set $cost.improved_spawner.2 sr.config 5
scoreboard players set $cost.improved_spawner.3 sr.config 8
scoreboard players set $cost.reinforced_armor.1 sr.config 4
scoreboard players set $cost.reinforced_armor.2 sr.config 6
scoreboard players set $cost.reinforced_armor.3 sr.config 9
scoreboard players set $cost.sharpened_sword.1 sr.config 4
scoreboard players set $cost.sharpened_sword.2 sr.config 7
scoreboard players set $cost.sharpened_sword.3 sr.config 11
scoreboard players set $cost.shulker_health sr.config 1

scoreboard players set $cost.ancient_debris.crystal sr.config 4
scoreboard players set $cost.arrow.gold sr.config 3
scoreboard players set $cost.bow.gold sr.config 12
scoreboard players set $cost.chainmail_armor.iron sr.config 56
scoreboard players set $cost.crossbow.crystal sr.config 4
scoreboard players set $cost.diamond_armor.crystal sr.config 6
scoreboard players set $cost.diamond_pickaxe.gold sr.config 7
scoreboard players set $cost.elytra.crystal sr.config 4
scoreboard players set $cost.end_stone.gold sr.config 2
scoreboard players set $cost.ender_pearl.crystal sr.config 2
scoreboard players set $cost.explosive_bottle.crystal sr.config 3
scoreboard players set $cost.firework_rocket.crystal sr.config 2
scoreboard players set $cost.fishing_rod.iron sr.config 32
scoreboard players set $cost.golden_axe.crystal sr.config 3
scoreboard players set $cost.golden_sword.crystal sr.config 2
scoreboard players set $cost.iron_armor.gold sr.config 12
scoreboard players set $cost.iron_sword.gold sr.config 6
scoreboard players set $cost.oak_planks.iron sr.config 16
scoreboard players set $cost.scaffolding.iron sr.config 12
scoreboard players set $cost.shulker_picker.crystal sr.config 2
scoreboard players set $cost.stained_glass.iron sr.config 4
scoreboard players set $cost.stone_sword.iron sr.config 27
scoreboard players set $cost.super_bow.crystal sr.config 3
scoreboard players set $cost.wooden_sword.iron sr.config 5

scoreboard players set $count.ancient_debris sr.config 3
scoreboard players set $count.arrow sr.config 10
scoreboard players set $count.end_stone sr.config 4
scoreboard players set $count.ender_pearl sr.config 1
scoreboard players set $count.oak_planks sr.config 12
scoreboard players set $count.scaffolding sr.config 6
scoreboard players set $count.stained_glass sr.config 16

scoreboard players set $bound.armors sr.config 1
scoreboard players set $bound.bow sr.config 0
scoreboard players set $bound.crossbow sr.config 0
scoreboard players set $bound.wooden_pickaxe sr.config 1
scoreboard players set $bound.diamond_pickaxe sr.config 0
scoreboard players set $bound.elytra sr.config 1
scoreboard players set $bound.fishing_rod sr.config 0
scoreboard players set $bound.golden_axe sr.config 1
scoreboard players set $bound.golden_sword sr.config 0
scoreboard players set $bound.iron_sword sr.config 0
scoreboard players set $bound.stone_sword sr.config 0
scoreboard players set $bound.super_bow sr.config 0
scoreboard players set $bound.wooden_sword sr.config 0
