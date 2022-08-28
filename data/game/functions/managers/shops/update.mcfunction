# Prevent item voiding
execute store result score $tmp var run data get block ~ ~ ~ Items
# 27 items in the shop means there's something that shouldn't be there.
execute if score $tmp var matches 27 run function #game:managers/shops/utils/return_items

data modify block ~ ~ ~ Items set from entity @s[type=minecraft:marker] data.Items
execute as @a[gamemode=!spectator,distance=..7] run function #game:managers/shops/purchase/check
kill @e[type=minecraft:item,nbt={Item:{tag:{shopId:{}}}}]