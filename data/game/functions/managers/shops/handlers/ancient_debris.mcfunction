scoreboard players operation #cost.iron var = $cost.ancient_debris.iron config
scoreboard players operation #cost.gold var = $cost.ancient_debris.gold config
scoreboard players operation #cost.crystal var = $cost.ancient_debris.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 store result score #count var run loot give @s loot game:blocks/ancient_debris
execute if score #error var matches 0 if score #count var matches 0 run loot spawn ^ ^0.5 ^1 loot game:blocks/ancient_debris