scoreboard players add @s armorLevel 1

execute if entity @s[tag=red] run scoreboard players operation @a[team=red] armorLevel = @s armorLevel
execute if entity @s[tag=blue] run scoreboard players operation @a[team=blue] armorLevel = @s armorLevel
execute if entity @s[tag=green] run scoreboard players operation @a[team=green] armorLevel = @s armorLevel
execute if entity @s[tag=yellow] run scoreboard players operation @a[team=yellow] armorLevel = @s armorLevel

execute if entity @s[tag=red] run item modify entity @a[team=red] armor.feet game:armor
execute if entity @s[tag=blue] run item modify entity @a[team=blue] armor.feet game:armor
execute if entity @s[tag=green] run item modify entity @a[team=green] armor.feet game:armor
execute if entity @s[tag=yellow] run item modify entity @a[team=yellow] armor.feet game:armor