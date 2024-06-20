execute at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1.4

execute if score #error var matches 1 run tellraw @s [{"storage":"game:lang","nbt":"errors.upgrader_souls","color":"red"}]
execute if score #error var matches 2 run tellraw @s [{"storage":"game:lang","nbt":"errors.upgrader_maxed","color":"red"}]
execute if score #error var matches 3 run tellraw @s [{"storage":"game:lang","nbt":"errors.upgrader_health","color":"red"}]
execute if score #error var matches 4 run tellraw @s [{"storage":"game:lang","nbt":"errors.upgrader_shulker","color":"red"}]
execute if score #error var matches 5 run tellraw @s [{"storage":"game:lang","nbt":"errors.upgrader_base","color":"red"}]
