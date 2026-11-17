execute store result score #total sr.var if items block ~ ~ ~ container.* *
data modify storage sr:core _ set value []
execute if score #count sr.var < #total sr.var run data modify storage sr:core _ set from block ~ ~ ~ Items
execute if score #count sr.var < #total sr.var run data remove storage sr:core _[{components:{"minecraft:custom_data":{shop_id:{}}}}]

data modify block ~ ~ ~ Items set from entity @s[type=minecraft:marker] data.Items
execute as @a[gamemode=!spectator,distance=..7] if items entity @s player.cursor *[minecraft:custom_data~{shop_id:{}}] run function sr:system/shop/purchase/handle

clear @a[distance=..10] *[custom_data~{shop_id:{}}]
execute as @e[type=minecraft:item] if items entity @s contents *[minecraft:custom_data~{shop_id:{}}] run kill @s
