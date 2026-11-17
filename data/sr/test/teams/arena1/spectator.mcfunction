# @environment sr:teams/arena1
# @max_ticks 300
# Walking into the spectator spot makes a player a spectator, and going back there brings them back.
# The environment runs the team picking on the first arena.
# The host stays without a team, which keeps the countdown from starting.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy gina spawn
dummy hugo spawn
await score $status sr.var matches 1
await entity @a[name=hugo,gamemode=adventure,team=sr.players]
await entity @e[type=minecraft:text_display,tag=sr.spectator]
execute at @e[type=minecraft:text_display,tag=sr.spectator,limit=1] run tp hugo ~ ~-2 ~
await entity @a[name=hugo,gamemode=spectator]
await delay 3
execute at @e[type=minecraft:text_display,tag=sr.spectator,limit=1] run tp hugo ~ ~-2 ~
await entity @a[name=hugo,gamemode=adventure,team=sr.players]
dummy hugo leave
dummy gina leave
