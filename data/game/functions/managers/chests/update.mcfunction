tag @s remove lock
execute if entity @s[team=red] run function #game:managers/chests/update/red
execute if entity @s[team=blue] run function #game:managers/chests/update/blue
execute if entity @s[team=green] run function #game:managers/chests/update/green
execute if entity @s[team=yellow] run function #game:managers/chests/update/yellow