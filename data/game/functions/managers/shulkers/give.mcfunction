execute if score #shulker_type var matches 1 run clear @s minecraft:cyan_shulker_box 1
execute if score #shulker_type var matches 1 if score #mainhand var matches 1 run loot replace entity @s weapon.mainhand loot game:blocks/blue_shulker
execute if score #shulker_type var matches 1 if score #mainhand var matches 0 run loot replace entity @s weapon.offhand loot game:blocks/blue_shulker

execute if score #shulker_type var matches 2 run clear @s minecraft:lime_shulker_box 1
execute if score #shulker_type var matches 2 if score #mainhand var matches 1 run loot replace entity @s weapon.mainhand loot game:blocks/green_shulker
execute if score #shulker_type var matches 2 if score #mainhand var matches 0 run loot replace entity @s weapon.offhand loot game:blocks/green_shulker

execute if score #shulker_type var matches 3 run clear @s minecraft:red_shulker_box 1
execute if score #shulker_type var matches 3 if score #mainhand var matches 1 run loot replace entity @s weapon.mainhand loot game:blocks/red_shulker
execute if score #shulker_type var matches 3 if score #mainhand var matches 0 run loot replace entity @s weapon.offhand loot game:blocks/red_shulker

execute if score #shulker_type var matches 4 run clear @s minecraft:yellow_shulker_box 1
execute if score #shulker_type var matches 4 if score #mainhand var matches 1 run loot replace entity @s weapon.mainhand loot game:blocks/yellow_shulker
execute if score #shulker_type var matches 4 if score #mainhand var matches 0 run loot replace entity @s weapon.offhand loot game:blocks/yellow_shulker