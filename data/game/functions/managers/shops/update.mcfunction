# Prevent item voiding 27, items in the shop means there's something that shouldn't be there.
execute store result score #count var run data get block ~ ~ ~ Items
execute if score #count var matches 27 run function game:managers/shops/rollback

data modify block ~ ~ ~ Items set from entity @s[type=minecraft:marker] data.Items
execute as @a[gamemode=!spectator,distance=..7] run function game:managers/shops/purchase/check
kill @e[type=minecraft:item,nbt={Item:{tag:{shopId:{}}}}]