scoreboard players operation #cost.iron var = $cost.scaffolding.iron config
scoreboard players operation #cost.gold var = $cost.scaffolding.gold config
scoreboard players operation #cost.crystal var = $cost.scaffolding.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:blocks/scaffolding