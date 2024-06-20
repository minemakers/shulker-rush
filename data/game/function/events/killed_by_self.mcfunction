execute unless data storage game:core messages.suicide[0] run data modify storage game:core messages.suicide set from storage game:lang suicide
tellraw @a [{"storage":"game:core","nbt":"messages.suicide[0][0]","color":"gray"},{"selector":"@s"},{"storage":"game:core","nbt":"messages.suicide[0][1]"}]
execute if predicate game:random_bool run data remove storage game:core messages.suicide[0]
data remove storage game:core messages.suicide[0]
