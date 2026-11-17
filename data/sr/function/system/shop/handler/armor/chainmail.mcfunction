execute if predicate sr:equipped/min_armor1 run scoreboard players set #error sr.var 2

execute if score #error sr.var matches 0 run function sr:system/shop/purchase/validate
execute if score #error sr.var matches 0 run loot replace entity @s armor.feet loot sr:equipment/chainmail_armor
execute if score #error sr.var matches 0 run item modify entity @s armor.feet sr:armor
