# Prevent item voiding, 5 items in the upgrader means there's something that shouldn't be there.
execute store result score #count var run data get block ~ ~ ~ Items
execute if score #count var matches 5 run function game:managers/upgraders/rollback

data modify block ~ ~ ~ Items set from entity @s[type=minecraft:marker] data.Items
execute as @a[gamemode=!spectator,distance=..7] run function game:managers/upgraders/purchase/check
kill @e[type=minecraft:item,nbt={Item:{tag:{upgradeId:{}}}}]