# Prevent item voiding
execute store result score $tmp var run data get block ~ ~ ~ Items
# 5 items in the upgrader means there's something that shouldn't be there.
execute if score $tmp var matches 5 run function game:managers/shops/utils/return_items

data modify block ~ ~ ~ Items set from entity @s[type=minecraft:marker] data.Items
execute as @a[gamemode=!spectator,distance=..7] run function game:managers/upgraders/purchase/check
kill @e[type=minecraft:item,nbt={Item:{tag:{upgradeId:{}}}}]