scoreboard players add @s swordLevel 1

execute if entity @s[tag=red] run scoreboard players operation @a[team=red] swordLevel = @s swordLevel
execute if entity @s[tag=blue] run scoreboard players operation @a[team=blue] swordLevel = @s swordLevel
execute if entity @s[tag=green] run scoreboard players operation @a[team=green] swordLevel = @s swordLevel
execute if entity @s[tag=yellow] run scoreboard players operation @a[team=yellow] swordLevel = @s swordLevel

execute if entity @s[tag=red] as @a[team=red] run function #game:events/replace_sword
execute if entity @s[tag=blue] as @a[team=blue] run function #game:events/replace_sword
execute if entity @s[tag=green] as @a[team=green] run function #game:events/replace_sword
execute if entity @s[tag=yellow] as @a[team=yellow] run function #game:events/replace_sword
