# @environment sr:game/arena1
# @max_ticks 300
# A kill is announced and gives a soul to the killer's team.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy hunter spawn
team join sr.blue hunter
execute as hunter run function sr:system/player/init
execute as hunter run function sr:system/player/respawn
dummy prey spawn
team join sr.yellow prey
execute as prey run function sr:system/player/init
execute as prey run function sr:system/player/respawn
await entity @a[name=hunter,gamemode=adventure,team=sr.blue]
await entity @a[name=prey,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
effect clear prey
damage prey 100 minecraft:player_attack by hunter
await chat "prey was killed by hunter"
await entity @a[name=prey,gamemode=spectator]
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.souls matches 1
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls matches 0
assert score hunter sr.kill_count matches 1
dummy hunter leave
dummy prey leave
