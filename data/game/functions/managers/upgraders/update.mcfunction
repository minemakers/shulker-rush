data modify block ~ ~ ~ Items set from entity @s[type=minecraft:marker] data.Items
execute as @a[gamemode=!spectator,distance=..7] run function game:managers/upgraders/purchase/check
kill @e[type=minecraft:item,nbt={Item:{tag:{upgradeId:{}}}}]