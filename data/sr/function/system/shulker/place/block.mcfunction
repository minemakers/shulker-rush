# Summon the shulker only if it's on the right island
execute if score #shulker_type sr.var matches 1 if predicate sr:location/red_island run function sr:resource/prefab/shulker/variant/red
execute if score #shulker_type sr.var matches 2 if predicate sr:location/blue_island run function sr:resource/prefab/shulker/variant/blue
execute if score #shulker_type sr.var matches 3 if predicate sr:location/green_island run function sr:resource/prefab/shulker/variant/green
execute if score #shulker_type sr.var matches 4 if predicate sr:location/yellow_island run function sr:resource/prefab/shulker/variant/yellow

# Throws an error if the shulker is out of its island
execute unless entity @e[type=minecraft:shulker,distance=..7,sort=nearest,limit=1] run function sr:system/shulker/error/island
execute if block ~ ~ ~ #sr:shulkers run setblock ~ ~ ~ minecraft:air
