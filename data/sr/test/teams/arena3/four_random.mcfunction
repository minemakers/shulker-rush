# @environment sr:teams/arena3
# @max_ticks 400
# Four players choosing a random team end up one per team, and the game starts.
await loaded 5000 216 0
await loaded 2900 236 15
await loaded 2986 236 -83
await loaded 3084 236 3
await loaded 2998 236 101
await loaded 2992 294 9
execute as @a run dummy @s leave
await not entity @a
await delay 5
dummy ada spawn
dummy bo spawn
dummy cy spawn
dummy di spawn
await entity @a[name=di,gamemode=adventure,team=sr.players]
assert result 4 run execute if entity @e[type=minecraft:interaction,tag=sr.team]
await entity @e[type=minecraft:interaction,tag=sr.random]
dummy ada use entity @e[type=minecraft:interaction,tag=sr.random,limit=1]
await entity @a[name=ada,team=!sr.players]
dummy bo use entity @e[type=minecraft:interaction,tag=sr.random,limit=1]
await entity @a[name=bo,team=!sr.players]
dummy cy use entity @e[type=minecraft:interaction,tag=sr.random,limit=1]
await entity @a[name=cy,team=!sr.players]
dummy di use entity @e[type=minecraft:interaction,tag=sr.random,limit=1]
await entity @a[name=di,team=!sr.players]
assert result 1 run execute if entity @a[team=sr.red]
assert result 1 run execute if entity @a[team=sr.blue]
assert result 1 run execute if entity @a[team=sr.green]
assert result 1 run execute if entity @a[team=sr.yellow]
await score $status sr.var matches 2
dummy ada leave
dummy bo leave
dummy cy leave
dummy di leave
