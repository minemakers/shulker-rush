scoreboard players operation #cost.iron var = $cost.shulker_picker.iron config
scoreboard players operation #cost.gold var = $cost.shulker_picker.gold config
scoreboard players operation #cost.crystal var = $cost.shulker_picker.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 store result score #count var run loot give @s loot game:items/shulker_picker
execute if score #error var matches 0 if score #count var matches 0 run loot spawn ^ ^0.5 ^1 loot game:items/shulker_picker