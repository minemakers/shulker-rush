execute if entity @a[predicate=sr:same_team,tag=sr.lock] run function sr:system/chest/abort
execute unless entity @a[predicate=sr:same_team,tag=sr.lock] run tag @s add sr.lock
