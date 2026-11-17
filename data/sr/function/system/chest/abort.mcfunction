execute at @s as @e[type=minecraft:item,distance=..2,sort=nearest,limit=1] if entity @s[nbt={PickupDelay:40s}] run kill @s
function sr:system/player/inventory/restore
