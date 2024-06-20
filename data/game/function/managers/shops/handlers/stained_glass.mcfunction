scoreboard players operation #cost.iron var = $cost.stained_glass.iron config
scoreboard players operation #cost.gold var = $cost.stained_glass.gold config
scoreboard players operation #cost.crystal var = $cost.stained_glass.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 store result score #count var run loot give @s loot game:blocks/stained_glass
execute if score #error var matches 0 if score #count var matches 0 run loot spawn ^ ^0.5 ^1 loot game:blocks/stained_glass
