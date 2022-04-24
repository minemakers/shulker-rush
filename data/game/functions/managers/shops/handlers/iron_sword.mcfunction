scoreboard players operation #cost.iron var = $cost.iron_sword.iron config
scoreboard players operation #cost.gold var = $cost.iron_sword.gold config
scoreboard players operation #cost.crystal var = $cost.iron_sword.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:equipments/iron_sword