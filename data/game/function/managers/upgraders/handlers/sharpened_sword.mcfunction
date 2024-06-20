execute if score @s sword_level matches 3 run scoreboard players set #error var 2
execute if score @s sword_level matches 2 run scoreboard players operation #cost.souls var = $cost.sharpened_sword.3 config
execute if score @s sword_level matches 1 run scoreboard players operation #cost.souls var = $cost.sharpened_sword.2 config
execute if score @s sword_level matches 0 run scoreboard players operation #cost.souls var = $cost.sharpened_sword.1 config

execute if score #error var matches 0 run function game:managers/upgraders/purchase/validate
execute if score #error var matches 0 run function game:managers/upgraders/actions/upgrade_sword
