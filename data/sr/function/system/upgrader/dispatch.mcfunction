scoreboard players set #error sr.var -1
item replace block 0 2 0 contents from entity @s player.cursor
execute unless data block 0 2 0 item.components."minecraft:custom_data".upgrade_id.id run return fail

scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,sort=nearest,limit=1] run function sr:system/upgrader/purchase/item with block 0 2 0 item.components."minecraft:custom_data".upgrade_id
