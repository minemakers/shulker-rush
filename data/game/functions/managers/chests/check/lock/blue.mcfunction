execute if entity @a[team=blue,tag=lock] run function game:managers/chests/abort
execute unless entity @a[team=blue,tag=lock] run tag @s add lock