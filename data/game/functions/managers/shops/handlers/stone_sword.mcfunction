scoreboard players operation #cost.iron var = $cost.stone_sword.iron config
scoreboard players operation #cost.gold var = $cost.stone_sword.gold config
scoreboard players operation #cost.crystal var = $cost.stone_sword.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:equipments/stone_sword