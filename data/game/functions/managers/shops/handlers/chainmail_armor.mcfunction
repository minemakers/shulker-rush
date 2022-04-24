execute if predicate game:equiped/min_armor1 run scoreboard players set #error var 2

scoreboard players operation #cost.iron var = $cost.chainmail_armor.iron config
scoreboard players operation #cost.gold var = $cost.chainmail_armor.gold config
scoreboard players operation #cost.crystal var = $cost.chainmail_armor.crystal config

execute if score #error var matches 0 run function game:managers/shops/purchase/validate
execute if score #error var matches 0 run loot replace entity @s armor.feet loot game:equipments/chainmail_armor
execute if score #error var matches 0 run item modify entity @s armor.feet game:armor