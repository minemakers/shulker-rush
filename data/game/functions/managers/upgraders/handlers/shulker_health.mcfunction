scoreboard players operation #cost.souls var = $cost.shulker_health config
execute if score @s shulkerHealth matches 7.. run scoreboard players set #error var 3
execute if score @s shulkerHealth matches ..0 run scoreboard players set #error var 4

execute if score #error var matches 0 run function #game:managers/upgraders/purchase/validate
execute if score #error var matches 0 run function #game:managers/upgraders/actions/heal_shulker