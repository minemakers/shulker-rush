execute as @e[type=minecraft:shulker,team=red] at @s run function game:managers/shulkers/powers/red
execute as @e[type=minecraft:shulker,team=blue] at @s run function game:managers/shulkers/powers/blue
execute as @e[type=minecraft:shulker,team=green] at @s run function game:managers/shulkers/powers/green
execute as @e[type=minecraft:shulker,team=yellow] at @s run function game:managers/shulkers/powers/yellow

execute if score $status var matches 2 run schedule function game:managers/shulkers/powers 18t
