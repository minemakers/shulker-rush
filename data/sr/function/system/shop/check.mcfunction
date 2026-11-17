# The menu is intact while it holds as many menu items as when it was filled (sr.menu, set by its view).
execute at @s store result score #count sr.var if items block ~ ~ ~ container.* *[minecraft:custom_data~{shop_id:{}}]
execute unless score #count sr.var = @s sr.menu at @s run function sr:system/shop/update
