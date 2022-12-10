execute if entity @a[team=green,tag=lock] run function game:managers/chests/abort
execute unless entity @a[team=green,tag=lock] run tag @s add lock
