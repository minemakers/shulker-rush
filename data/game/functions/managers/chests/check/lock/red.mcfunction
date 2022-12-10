execute if entity @a[team=red,tag=lock] run function game:managers/chests/abort
execute unless entity @a[team=red,tag=lock] run tag @s add lock
