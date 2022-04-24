execute if score @s shulkerLevel matches 3 run scoreboard players set #error var 2
execute if score @s shulkerLevel matches 2 run scoreboard players operation #cost.souls var = $cost.enhanced_shulker.3 config
execute if score @s shulkerLevel matches 1 run scoreboard players operation #cost.souls var = $cost.enhanced_shulker.2 config
execute if score @s shulkerLevel matches 0 run scoreboard players operation #cost.souls var = $cost.enhanced_shulker.1 config

execute if score #error var matches 0 run function game:managers/upgraders/purchase/validate
execute if score #error var matches 0 run function game:managers/upgraders/actions/upgrade_shulker