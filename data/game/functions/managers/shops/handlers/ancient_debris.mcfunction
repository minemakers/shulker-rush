scoreboard players operation #cost.iron var = $cost.ancient_debris.iron config
scoreboard players operation #cost.gold var = $cost.ancient_debris.gold config
scoreboard players operation #cost.crystal var = $cost.ancient_debris.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:blocks/ancient_debris