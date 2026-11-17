execute unless data storage sr:core messages.suicide[0] run data modify storage sr:core messages.suicide set from storage sr:lang suicide
tellraw @a [{"storage":"sr:core","nbt":"messages.suicide[0][0]","interpret":true,"color":"gray"},{"selector":"@s"},{"storage":"sr:core","nbt":"messages.suicide[0][1]","interpret":true}]
execute if predicate sr:random_bool run data remove storage sr:core messages.suicide[0]
data remove storage sr:core messages.suicide[0]
