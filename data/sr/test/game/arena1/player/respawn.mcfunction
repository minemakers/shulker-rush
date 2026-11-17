# @environment sr:game/arena1
# @max_ticks 300
# A player who dies becomes a spectator, then respawns equipped after the timer.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy phoenix spawn
team join sr.yellow phoenix
execute as phoenix run function sr:system/player/init
execute as phoenix run function sr:system/player/respawn
await entity @a[name=phoenix,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
kill phoenix
await entity @a[name=phoenix,gamemode=spectator]
assert score phoenix sr.respawn_timer matches 1..
assert score phoenix sr.death_count matches 1
await chat "phoenix (burned|committed|died|flew|got|lost|reached|tried)"
await entity @a[name=phoenix,gamemode=adventure]
assert items entity phoenix armor.feet minecraft:leather_boots
assert items entity phoenix container.* minecraft:wooden_pickaxe
assert score $status sr.var matches 2
dummy phoenix leave
