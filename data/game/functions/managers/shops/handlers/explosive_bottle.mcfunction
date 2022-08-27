scoreboard players operation #cost.iron var = $cost.explosive_bottle.iron config
scoreboard players operation #cost.gold var = $cost.explosive_bottle.gold config
scoreboard players operation #cost.crystal var = $cost.explosive_bottle.crystal config

execute if score #error var matches 0 run function #game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:items/explosive_bottle