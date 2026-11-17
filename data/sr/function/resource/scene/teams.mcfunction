tp @e[type=!player] 0 -1000 0
kill @e[type=!player]

execute if score $arena sr.var matches 1 run function sr:resource/scene/arena1/teams
execute if score $arena sr.var matches 2 run function sr:resource/scene/arena2/teams
execute if score $arena sr.var matches 3 run function sr:resource/scene/arena3/teams
