tp @e[type=!player] 0 -1000 0
kill @e[type=!player]

# Dispatch to the current arena "teams" scene
execute if score $arena var matches 1 run function #game:resources/scenes/arena1/teams
execute if score $arena var matches 2 run function #game:resources/scenes/arena2/teams
execute if score $arena var matches 3 run function #game:resources/scenes/arena3/teams