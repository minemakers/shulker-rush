execute if entity @s[team=red] run function game:managers/chests/check/red
execute if entity @s[team=blue] run function game:managers/chests/check/blue
execute if entity @s[team=green] run function game:managers/chests/check/green
execute if entity @s[team=yellow] run function game:managers/chests/check/yellow
execute if entity @s[advancements={game:check_inventory={changed=true}}] run function #game:events/save_inventory with entity @s
