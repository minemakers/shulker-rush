# @environment sr:scenario/arena2
# @max_ticks 900
# The matches that do not go to the end, on the second arena: not enough players to start, a player leaving
# while teams are picked, then a player leaving during the game. Each time the one left stops it. A last match
# is then played to the end.
await loaded 5000 216 0
await loaded 2026 229 0
await loaded 2026 209 53
await loaded 2026 209 -55
execute as @a run dummy @s leave
await not entity @a
await delay 5
dummy alice spawn
await entity @a[name=alice,gamemode=adventure,team=sr.players]
dummy alice use entity @e[type=minecraft:interaction,tag=sr.game_launcher,limit=1]
await chat "not enough players"
assert score $status sr.var matches 0
# A second player arrives: teams can be picked, until that player leaves.
dummy bob spawn
await entity @a[name=bob,gamemode=adventure,team=sr.players]
await delay 2
dummy alice use entity @e[type=minecraft:interaction,tag=sr.game_launcher,limit=1]
await score $status sr.var matches 1
dummy bob leave
await chat "only team standing" alice
execute as alice run trigger sr.confirm set 1
await score $status sr.var matches 0
# The game starts this time, and the same player leaves again.
dummy bob spawn
await entity @a[name=bob,gamemode=adventure,team=sr.players]
await delay 2
dummy alice use entity @e[type=minecraft:interaction,tag=sr.game_launcher,limit=1]
await score $status sr.var matches 1
await entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow]
dummy alice use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.blue,limit=1]
dummy bob use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow,limit=1]
await entity @a[name=alice,team=sr.blue]
await entity @a[name=bob,team=sr.yellow]
await score $status sr.var matches 2
assert result 2 run execute if entity @e[type=minecraft:shulker]
assert score alice sr.player_id matches 1..
await delay 70
dummy bob leave
await chat "only team standing" alice
await score alice sr.confirm matches 0
execute as alice run trigger sr.confirm set 1
await score $status sr.var matches 0
await entity @a[name=alice,gamemode=adventure,team=sr.players]
assert entity @e[type=minecraft:interaction,tag=sr.game_launcher]
await not entity @e[type=minecraft:shulker,team=sr.blue]
# A last match goes to the end: the blue shulker is destroyed, its player eliminated, and yellow wins.
dummy bob spawn
await entity @a[name=bob,gamemode=adventure,team=sr.players]
await delay 2
dummy alice use entity @e[type=minecraft:interaction,tag=sr.game_launcher,limit=1]
await score $status sr.var matches 1
await entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow]
dummy alice use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.blue,limit=1]
dummy bob use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow,limit=1]
await score $status sr.var matches 2
await entity @e[type=minecraft:shulker,team=sr.blue]
await delay 70
execute as @e[type=minecraft:shulker,team=sr.blue] run function sr:event/shulker_death
kill alice
await chat "Sorry, alice you are eliminated!"
await chat "The Yellow Team won the game"
await score $status sr.var matches 0
await entity @a[name=bob,gamemode=adventure,team=sr.players]
