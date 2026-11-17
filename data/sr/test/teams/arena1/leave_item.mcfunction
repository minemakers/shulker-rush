# @environment sr:teams/arena1
# @max_ticks 300
# Using the eye of ender takes a player out of their team.
# The environment runs the team picking on the first arena.
# The host stays without a team, which keeps the countdown from starting.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy anna spawn
dummy ben spawn
await score $status sr.var matches 1
await entity @a[name=ben,gamemode=adventure,team=sr.players]
await entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow]
dummy ben use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow,limit=1]
await entity @a[name=ben,team=sr.yellow]
await items entity ben hotbar.8 minecraft:ender_eye
dummy ben mainhand 8
dummy ben use
await entity @a[name=ben,team=sr.players,gamemode=adventure]
dummy ben leave
dummy anna leave
