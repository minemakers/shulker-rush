# @environment sr:teams/arena1
# @max_ticks 300
# The eye of ender takes a player out of their team while teams are picked.
# The environment runs the team picking on the first arena.
# The host stays without a team, which keeps the countdown from starting.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy cora spawn
dummy dan spawn
await score $status sr.var matches 1
await entity @a[name=dan,gamemode=adventure,team=sr.players]
await entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow]
dummy dan use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow,limit=1]
await entity @a[name=dan,team=sr.yellow]
await items entity dan hotbar.8 minecraft:ender_eye
execute as dan at @s run function sr:event/leave_team
assert entity @a[name=dan,team=sr.players,gamemode=adventure]
assert not score $countdown sr.var matches 0..
dummy dan leave
dummy cora leave
