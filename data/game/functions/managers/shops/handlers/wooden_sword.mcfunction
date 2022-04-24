scoreboard players operation #cost.iron var = $cost.wooden_sword.iron config
scoreboard players operation #cost.gold var = $cost.wooden_sword.gold config
scoreboard players operation #cost.crystal var = $cost.wooden_sword.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:equipments/wooden_sword