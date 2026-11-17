# @environment sr:game/arena1
# @max_ticks 300
# Fast travel brings a player back to their spawn point.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy voyager spawn
team join sr.blue voyager
execute as voyager run function sr:system/player/init
execute as voyager run function sr:system/player/respawn
await entity @a[name=voyager,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 70
tp voyager 1045.5 242 30.5
execute as voyager at @s run function sr:event/fast_travel
assert entity @a[name=voyager,gamemode=adventure,x=1050,y=240,z=10,dx=14,dy=10,dz=30]
dummy voyager leave
