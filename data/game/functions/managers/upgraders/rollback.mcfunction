# Drop items that should not be present in the upgrader.
data modify storage game:core tmp set from block ~ ~ ~ Items
data remove storage game:core tmp[{tag:{upgradeId:{}}}]
data modify block 0 0 0 Items set from storage game:core tmp
loot spawn ~ ~0.8 ~ mine 0 0 0 minecraft:air{contents:1b}

#
# Maybe find player who put this item and insert it into inventory?
# But they might not have place for it, if there were items lying around.
#