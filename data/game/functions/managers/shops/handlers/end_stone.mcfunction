scoreboard players operation #cost.iron var = $cost.end_stone.iron config
scoreboard players operation #cost.gold var = $cost.end_stone.gold config
scoreboard players operation #cost.crystal var = $cost.end_stone.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:blocks/end_stone