scoreboard players set #error sr.var 0
execute store result score #team sr.var run compute entity @s integer sr:team
execute as @e[type=minecraft:marker,tag=sr.upgrader,sort=nearest,limit=1] unless predicate sr:same_team run scoreboard players set #error sr.var 5

execute if score #error sr.var matches 0 run function sr:system/upgrader/dispatch
execute if score #error sr.var matches 0 run function sr:system/upgrader/purchase/payment
execute if score #error sr.var matches 1.. run function sr:system/upgrader/purchase/error

item replace block 0 2 0 contents with minecraft:air
data modify block 0 2 0 item set from storage sr:core _[0]
item replace entity @s player.cursor from block 0 2 0 contents
