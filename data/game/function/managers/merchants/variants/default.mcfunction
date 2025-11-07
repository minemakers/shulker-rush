data remove storage game:core trades

data modify storage game:core trades append value {maxUses:9999999,rewardExp:0b}
loot replace block 0 2 0 contents loot game:contents/trades/crystal/buy
data modify storage game:core trades[-1].buy set from block 0 2 0 item
loot replace block 0 2 0 contents loot game:contents/trades/crystal/buy2
data modify storage game:core trades[-1].buyB set from block 0 2 0 item
loot replace block 0 2 0 contents loot game:contents/trades/crystal/sell
data modify storage game:core trades[-1].sell set from block 0 2 0 item

data modify storage game:core trades append value {maxUses:9999999,rewardExp:0b}
loot replace block 0 2 0 contents loot game:contents/trades/gold/buy
data modify storage game:core trades[-1].buy set from block 0 2 0 item
loot replace block 0 2 0 contents loot game:contents/trades/gold/sell
data modify storage game:core trades[-1].sell set from block 0 2 0 item

data modify storage game:core trades append value {maxUses:9999999,rewardExp:0b}
loot replace block 0 2 0 contents loot game:contents/trades/travel/buy
data modify storage game:core trades[-1].buy set from block 0 2 0 item
loot replace block 0 2 0 contents loot game:contents/trades/travel/sell
data modify storage game:core trades[-1].sell set from block 0 2 0 item
