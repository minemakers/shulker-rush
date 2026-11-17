# @environment sr:teams/arena1
# @max_ticks 300
# The random picker puts the player in one of the arena's teams.
# The environment runs the team picking on the first arena.
# The host stays without a team, which keeps the countdown from starting.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy eve spawn
dummy finn spawn
await score $status sr.var matches 1
await entity @a[name=finn,gamemode=adventure,team=sr.players]
await entity @e[type=minecraft:interaction,tag=sr.random]
dummy finn use entity @e[type=minecraft:interaction,tag=sr.random,limit=1]
await entity @a[name=finn,team=!sr.players,gamemode=adventure]
assert not entity @a[name=finn,team=sr.red]
assert not entity @a[name=finn,team=sr.green]
assert not entity @e[type=minecraft:interaction,tag=sr.selected]
assert not entity @e[type=minecraft:interaction,tag=sr.available]
dummy finn leave
dummy eve leave
