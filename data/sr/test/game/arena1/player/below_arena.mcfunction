# @environment sr:game/arena1
# @max_ticks 300
# Falling under the arena kills the player.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy faller spawn
team join sr.yellow faller
execute as faller run function sr:system/player/init
execute as faller run function sr:system/player/respawn
await entity @a[name=faller,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
tp faller 1000 150 30
await entity @a[name=faller,gamemode=spectator]
assert score $status sr.var matches 2
dummy faller leave
