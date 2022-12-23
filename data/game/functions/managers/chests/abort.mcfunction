execute as @s[advancements={game:check_inventory={changed=false}}] run function game:managers/chests/abort/compute
execute at @s as @e[type=minecraft:item,distance=..2,sort=nearest,limit=1] if entity @s[nbt={PickupDelay:40s}] run kill @s

function #game:events/restore_inventory
function #game:events/save_inventory
