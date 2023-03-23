execute if entity @a[team=red] run function game:resources/views/screen/actionbar/red
execute if entity @a[team=blue] run function game:resources/views/screen/actionbar/blue
execute if entity @a[team=green] run function game:resources/views/screen/actionbar/green
execute if entity @a[team=yellow] run function game:resources/views/screen/actionbar/yellow

execute if score $status var matches 2 run schedule function game:resources/views/screen/actionbar 1.5s
