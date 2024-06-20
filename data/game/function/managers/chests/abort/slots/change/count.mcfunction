execute store result storage game:core chests.source[0].count int 1 run scoreboard players operation #source.count var -= #target.count var
data modify block 0 0 0 Items append from storage game:core chests.source[0]
