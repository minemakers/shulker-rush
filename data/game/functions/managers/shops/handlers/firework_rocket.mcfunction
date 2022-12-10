scoreboard players operation #cost.iron var = $cost.firework_rocket.iron config
scoreboard players operation #cost.gold var = $cost.firework_rocket.gold config
scoreboard players operation #cost.crystal var = $cost.firework_rocket.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 store result score #count var run loot give @s loot game:items/firework_rocket
execute if score #error var matches 0 if score #count var matches 0 run loot spawn ^ ^0.5 ^1 loot game:items/firework_rocket
