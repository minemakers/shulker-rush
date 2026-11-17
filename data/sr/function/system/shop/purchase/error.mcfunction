execute at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1.4

execute if score #error sr.var matches 1 run tellraw @s [{"storage":"sr:lang","nbt":"errors.shop_money","interpret":true,"color":"red"}]
execute if score #error sr.var matches 2 run tellraw @s [{"storage":"sr:lang","nbt":"errors.shop_owned","interpret":true,"color":"red"}]
