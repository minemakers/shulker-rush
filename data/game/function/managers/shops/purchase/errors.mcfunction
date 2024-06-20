execute at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1.4

execute if score #error var matches 1 run tellraw @s [{"storage":"game:lang","nbt":"errors.shop_money","color":"red"}]
execute if score #error var matches 2 run tellraw @s [{"storage":"game:lang","nbt":"errors.shop_owned","color":"red"}]
