execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2

execute store result storage sr:core cost.iron int 1 run scoreboard players get #cost.iron sr.var
execute store result storage sr:core cost.gold int 1 run scoreboard players get #cost.gold sr.var
execute store result storage sr:core cost.crystal int 1 run scoreboard players get #cost.crystal sr.var
function sr:system/shop/purchase/pay with storage sr:core cost
