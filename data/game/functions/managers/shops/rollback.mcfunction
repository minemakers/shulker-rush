# Drop items that should not be present in the shop.
data modify storage game:core tmp set from block ~ ~ ~ Items
data remove storage game:core tmp[{tag:{shopId:{}}}]
data modify block 0 0 0 Items set from storage game:core tmp
execute rotated as @s run loot spawn ^ ^ ^0.65 mine 0 0 0 minecraft:air{contents:1b}

#
# Maybe find player who put this item and insert it into inventory?
# But they might not have place for it, if there were items lying around.
#