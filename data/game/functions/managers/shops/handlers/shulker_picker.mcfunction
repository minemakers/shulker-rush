scoreboard players operation #cost.iron var = $cost.shulker_picker.iron config
scoreboard players operation #cost.gold var = $cost.shulker_picker.gold config
scoreboard players operation #cost.crystal var = $cost.shulker_picker.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:items/shulker_picker