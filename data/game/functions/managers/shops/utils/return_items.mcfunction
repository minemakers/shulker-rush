# Copy items to storage
data modify storage game:tmp shop_items set from block ~ ~ ~ Items
# Remove all shop items
data remove storage game:tmp shop_items[{tag:{shopId:{}}}]
# Copy items that remain to shulker
data modify block 0 0 0 Items set from storage game:tmp shop_items
# And drop them
loot spawn ~ ~ ~ mine 0 0 0 minecraft:air{contents:1b}
#
# Maybe find player who put this item and insert it into inventory?
# But they might not have place for it, if there were items lying around.
#