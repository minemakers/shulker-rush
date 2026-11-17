execute if predicate sr:equipped/elytra run scoreboard players set #error sr.var 2

execute if score #error sr.var matches 0 run function sr:system/shop/purchase/validate
execute if score #error sr.var matches 0 run loot replace entity @s armor.chest loot sr:equipment/elytra
