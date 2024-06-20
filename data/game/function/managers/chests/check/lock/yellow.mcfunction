execute if entity @a[team=yellow,tag=lock] run function game:managers/chests/abort
execute unless entity @a[team=yellow,tag=lock] run tag @s add lock
