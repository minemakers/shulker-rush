data remove storage sr:core trades

data modify storage sr:core trades append value {maxUses:9999999,rewardExp:0b}
loot replace block 0 2 0 contents loot sr:content/trade/crystal/buy
data modify storage sr:core trades[-1].buy set from block 0 2 0 item
loot replace block 0 2 0 contents loot sr:content/trade/crystal/buy2
data modify storage sr:core trades[-1].buyB set from block 0 2 0 item
loot replace block 0 2 0 contents loot sr:content/trade/crystal/sell
data modify storage sr:core trades[-1].sell set from block 0 2 0 item

data modify storage sr:core trades append value {maxUses:9999999,rewardExp:0b}
loot replace block 0 2 0 contents loot sr:content/trade/gold/buy
data modify storage sr:core trades[-1].buy set from block 0 2 0 item
loot replace block 0 2 0 contents loot sr:content/trade/gold/sell
data modify storage sr:core trades[-1].sell set from block 0 2 0 item

# One fast travel per purchase: a shift-click would otherwise spend every crystal on eyes that are all consumed at once.
# The offer is put back in stock by sr:event/fast_travel/done.
data modify storage sr:core trades append value {maxUses:1,rewardExp:0b}
loot replace block 0 2 0 contents loot sr:content/trade/travel/buy
data modify storage sr:core trades[-1].buy set from block 0 2 0 item
loot replace block 0 2 0 contents loot sr:content/trade/travel/sell
data modify storage sr:core trades[-1].sell set from block 0 2 0 item

execute summon minecraft:villager run function sr:resource/prefab/merchant/abstract
