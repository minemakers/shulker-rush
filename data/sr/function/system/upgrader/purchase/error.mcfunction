execute at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1.4

execute if score #error sr.var matches 1 run tellraw @s [{"storage":"sr:lang","nbt":"errors.upgrader_souls","interpret":true,"color":"red"}]
execute if score #error sr.var matches 2 run tellraw @s [{"storage":"sr:lang","nbt":"errors.upgrader_maxed","interpret":true,"color":"red"}]
execute if score #error sr.var matches 3 run tellraw @s [{"storage":"sr:lang","nbt":"errors.upgrader_health","interpret":true,"color":"red"}]
execute if score #error sr.var matches 4 run tellraw @s [{"storage":"sr:lang","nbt":"errors.upgrader_shulker","interpret":true,"color":"red"}]
execute if score #error sr.var matches 5 run tellraw @s [{"storage":"sr:lang","nbt":"errors.upgrader_base","interpret":true,"color":"red"}]
