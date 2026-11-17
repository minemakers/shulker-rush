scoreboard players operation #cost.souls sr.var = $cost.shulker_health sr.config
execute if score @s sr.shulker_health matches 7.. run scoreboard players set #error sr.var 3
execute if score @s sr.shulker_health matches ..0 run scoreboard players set #error sr.var 4

execute if score #error sr.var matches 0 run function sr:system/upgrader/purchase/validate
execute if score #error sr.var matches 0 run function sr:system/upgrader/action/heal_shulker
