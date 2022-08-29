execute if data storage game:core chests.source[0] store result score #source.slot var run data get storage game:core chests.source[0].Slot
execute if data storage game:core chests.target[0] store result score #target.slot var run data get storage game:core chests.target[0].Slot

execute if score #source.slot var = #target.slot var run function game:managers/chests/abort/slots/compare
execute if score #source.slot var < #target.slot var run function game:managers/chests/abort/slots/insert
execute if score #source.slot var > #target.slot var run function game:managers/chests/abort/slots/remove

execute if data storage game:core chests.source[0] run function game:managers/chests/abort/slots/next
execute if data storage game:core chests.target[0] run function game:managers/chests/abort/slots/next