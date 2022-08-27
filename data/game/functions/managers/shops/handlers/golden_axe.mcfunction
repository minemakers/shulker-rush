scoreboard players operation #cost.iron var = $cost.golden_axe.iron config
scoreboard players operation #cost.gold var = $cost.golden_axe.gold config
scoreboard players operation #cost.crystal var = $cost.golden_axe.crystal config

execute if score #error var matches 0 run function #game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:equipments/golden_axe