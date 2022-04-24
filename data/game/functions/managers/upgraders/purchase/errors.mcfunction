execute at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1.4

execute if score #error var matches 1 run tellraw @s [{"text":"You don't have enough souls to buy this upgrade!","color":"red"}]
execute if score #error var matches 2 run tellraw @s [{"text":"This upgrade is already maxed out!","color":"red"}]
execute if score #error var matches 3 run tellraw @s [{"text":"Your shulker is already at full health!","color":"red"}]
execute if score #error var matches 4 run tellraw @s [{"text":"You can't heal a dead shulker!","color":"red"}]
execute if score #error var matches 5 run tellraw @s [{"text":"You can't buy upgrades in an enemy base!","color":"red"}]