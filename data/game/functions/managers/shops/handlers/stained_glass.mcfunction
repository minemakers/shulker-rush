scoreboard players operation #cost.iron var = $cost.stained_glass.iron config
scoreboard players operation #cost.gold var = $cost.stained_glass.gold config
scoreboard players operation #cost.crystal var = $cost.stained_glass.crystal config

execute if score #error var matches 0 run function #game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot give @s loot game:blocks/stained_glass