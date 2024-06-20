scoreboard players add @s sword_level 1

execute if entity @s[tag=red] run scoreboard players operation @a[team=red] sword_level = @s sword_level
execute if entity @s[tag=blue] run scoreboard players operation @a[team=blue] sword_level = @s sword_level
execute if entity @s[tag=green] run scoreboard players operation @a[team=green] sword_level = @s sword_level
execute if entity @s[tag=yellow] run scoreboard players operation @a[team=yellow] sword_level = @s sword_level

execute if entity @s[tag=red] as @a[team=red] run function #game:events/replace_sword
execute if entity @s[tag=blue] as @a[team=blue] run function #game:events/replace_sword
execute if entity @s[tag=green] as @a[team=green] run function #game:events/replace_sword
execute if entity @s[tag=yellow] as @a[team=yellow] run function #game:events/replace_sword
