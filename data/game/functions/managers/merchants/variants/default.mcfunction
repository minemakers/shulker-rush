data remove storage game:core trades

loot replace block 0 0 0 container.0 3 loot game:contents/trades/crystal
data modify storage game:core trades append value {maxUses:9999999,rewardExp:0b}
data modify storage game:core trades[-1].buy set from block 0 0 0 Items[0]
data modify storage game:core trades[-1].buyB set from block 0 0 0 Items[1]
data modify storage game:core trades[-1].sell set from block 0 0 0 Items[2]

loot replace block 0 0 0 container.0 3 loot game:contents/trades/gold
data modify storage game:core trades append value {maxUses:9999999,rewardExp:0b}
data modify storage game:core trades[-1].buy set from block 0 0 0 Items[0]
data modify storage game:core trades[-1].sell set from block 0 0 0 Items[1]

loot replace block 0 0 0 container.0 3 loot game:contents/trades/travel
data modify storage game:core trades append value {maxUses:1,rewardExp:0b}
data modify storage game:core trades[-1].buy set from block 0 0 0 Items[0]
data modify storage game:core trades[-1].sell set from block 0 0 0 Items[1]