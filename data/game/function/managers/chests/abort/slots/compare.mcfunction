execute store result score #source.count var run data get storage game:core chests.source[0].count
execute store result score #target.count var run data get storage game:core chests.target[0].count

data remove storage game:core chests.source[0].count
data remove storage game:core chests.target[0].count

execute store success score #success var run data modify storage game:core chests.target[0] set from storage game:core chests.source[0]
execute if score #success var matches 0 if score #source.count var > #target.count var run function game:managers/chests/abort/slots/change/count
execute if score #success var matches 1 run function game:managers/chests/abort/slots/change/item

data remove storage game:core chests.target[0]
data remove storage game:core chests.source[0]
