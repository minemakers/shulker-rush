scoreboard players set #error sr.var -1
item replace block 0 2 0 contents from entity @s player.cursor
execute unless data block 0 2 0 item.components."minecraft:custom_data".shop_id.id run return fail

scoreboard players set #error sr.var 0
function sr:system/shop/purchase/item with block 0 2 0 item.components."minecraft:custom_data".shop_id
