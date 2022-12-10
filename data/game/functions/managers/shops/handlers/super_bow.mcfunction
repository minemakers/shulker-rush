scoreboard players operation #cost.iron var = $cost.super_bow.iron config
scoreboard players operation #cost.gold var = $cost.super_bow.gold config
scoreboard players operation #cost.crystal var = $cost.super_bow.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 store result score #count var run loot give @s loot game:equipments/super_bow
execute if score #error var matches 0 if score #count var matches 0 run loot spawn ^ ^0.5 ^1 loot game:equipments/super_bow
