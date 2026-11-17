# @environment sr:game/arena1
# @max_ticks 300
# A team cannot hurt its own shulker.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy guardian spawn
team join sr.yellow guardian
execute as guardian run function sr:system/player/init
execute as guardian run function sr:system/player/respawn
await entity @a[name=guardian,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
effect clear guardian minecraft:weakness
dummy guardian attack @e[type=minecraft:shulker,team=sr.yellow,limit=1]
await delay 5
assert score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 7
dummy guardian leave
