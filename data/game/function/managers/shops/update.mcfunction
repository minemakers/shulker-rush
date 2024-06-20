# Prevent item voiding, total not equal to count means there's something that shouldn't be there.
execute store result score #total var run data get block ~ ~ ~ Items
data modify storage game:core tmp set value []
execute if score #count var < #total var run data modify storage game:core tmp set from block ~ ~ ~ Items
execute if score #count var < #total var run data remove storage game:core tmp[{components:{"minecraft:custom_data":{shop_id:{}}}}]

data modify block ~ ~ ~ Items set from entity @s[type=minecraft:marker] data.Items
execute as @a[gamemode=!spectator,distance=..7] if items entity @s player.cursor *[minecraft:custom_data~{shop_id:{}}] run function game:managers/shops/purchase/handle

clear @a #game:all[custom_data~{shop_id:{}}]
kill @e[type=minecraft:item,nbt={Item:{components:{"minecraft:custom_data":{shop_id:{}}}}}]
