scoreboard players operation #cost.iron var = $cost.ender_pearl.iron config
scoreboard players operation #cost.gold var = $cost.ender_pearl.gold config
scoreboard players operation #cost.crystal var = $cost.ender_pearl.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:items/ender_pearl