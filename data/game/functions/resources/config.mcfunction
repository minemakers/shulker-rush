data modify storage game:core i18n set value []
data modify storage game:core i18n append value {"name":"English", "function": "#game:resources/lang/en"}
data modify storage game:core i18n append value {"name":"French", "function": "#game:resources/lang/fr"}
data modify storage game:core i18n append value {"name":"Russian", "function": "#game:resources/lang/ru"}

scoreboard players reset * config

scoreboard players set $timer.respawn config 100

scoreboard players set $timer.crystal config 600
scoreboard players set $timer.gold.0 config 250
scoreboard players set $timer.gold.1 config 200
scoreboard players set $timer.gold.2 config 150
scoreboard players set $timer.gold.3 config 100
scoreboard players set $timer.iron.0 config 40
scoreboard players set $timer.iron.1 config 30
scoreboard players set $timer.iron.2 config 25
scoreboard players set $timer.iron.3 config 20

scoreboard players set $cost.enhanced_shulker.1 config 3
scoreboard players set $cost.enhanced_shulker.2 config 4
scoreboard players set $cost.enhanced_shulker.3 config 6
scoreboard players set $cost.improved_spawner.1 config 2
scoreboard players set $cost.improved_spawner.2 config 5
scoreboard players set $cost.improved_spawner.3 config 8
scoreboard players set $cost.reinforced_armor.1 config 4
scoreboard players set $cost.reinforced_armor.2 config 6
scoreboard players set $cost.reinforced_armor.3 config 9
scoreboard players set $cost.sharpened_sword.1 config 4
scoreboard players set $cost.sharpened_sword.2 config 7
scoreboard players set $cost.sharpened_sword.3 config 11
scoreboard players set $cost.shulker_health config 1

scoreboard players set $cost.ancient_debris.crystal config 4
scoreboard players set $cost.arrow.gold config 3
scoreboard players set $cost.bow.gold config 12
scoreboard players set $cost.chainmail_armor.iron config 56
scoreboard players set $cost.crossbow.crystal config 4
scoreboard players set $cost.diamond_armor.crystal config 6
scoreboard players set $cost.diamond_pickaxe.gold config 7
scoreboard players set $cost.elytra.crystal config 4
scoreboard players set $cost.end_stone.gold config 2
scoreboard players set $cost.ender_pearl.crystal config 2
scoreboard players set $cost.explosive_bottle.crystal config 3
scoreboard players set $cost.firework_rocket.crystal config 2
scoreboard players set $cost.fishing_rod.iron config 32
scoreboard players set $cost.golden_axe.crystal config 3
scoreboard players set $cost.golden_sword.crystal config 4
scoreboard players set $cost.iron_armor.gold config 12
scoreboard players set $cost.iron_sword.gold config 6
scoreboard players set $cost.oak_planks.iron config 16
scoreboard players set $cost.scaffolding.iron config 12
scoreboard players set $cost.shulker_picker.crystal config 2
scoreboard players set $cost.stained_glass.iron config 4
scoreboard players set $cost.stone_sword.iron config 27
scoreboard players set $cost.super_bow.crystal config 3
scoreboard players set $cost.wooden_sword.iron config 5

scoreboard players set $count.ancient_debris config 3
scoreboard players set $count.arrow config 10
scoreboard players set $count.end_stone config 4
scoreboard players set $count.ender_pearl config 1
scoreboard players set $count.oak_planks config 12
scoreboard players set $count.scaffolding config 6
scoreboard players set $count.stained_glass config 16

scoreboard players set $bound.armors config 1
scoreboard players set $bound.bow config 0
scoreboard players set $bound.crossbow config 0
scoreboard players set $bound.wooden_pickaxe config 1
scoreboard players set $bound.diamond_pickaxe config 0
scoreboard players set $bound.elytra config 1
scoreboard players set $bound.fishing_rod config 0
scoreboard players set $bound.golden_axe config 1
scoreboard players set $bound.golden_sword config 0
scoreboard players set $bound.iron_sword config 0
scoreboard players set $bound.stone_sword config 0
scoreboard players set $bound.super_bow config 0
scoreboard players set $bound.wooden_sword config 0
