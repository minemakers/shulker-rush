execute at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 1 1.4

execute if score #error var matches 1 run tellraw @s [{"text":"You don't have enough money to buy this item!","color":"red"}]
execute if score #error var matches 2 run tellraw @s [{"text":"You already own this item!","color":"red"}]