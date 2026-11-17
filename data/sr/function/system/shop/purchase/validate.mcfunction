execute if score #iron sr.var < #cost.iron sr.var run scoreboard players set #error sr.var 1
execute if score #gold sr.var < #cost.gold sr.var run scoreboard players set #error sr.var 1
execute if score #crystal sr.var < #cost.crystal sr.var run scoreboard players set #error sr.var 1

execute if score #error sr.var matches 0 run function sr:system/shop/purchase/payment
