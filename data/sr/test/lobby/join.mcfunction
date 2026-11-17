# @environment sr:lobby
# @max_ticks 60
# A player joining lands in the lobby, in adventure mode, without a team.
await loaded 5000 216 0
dummy newcomer spawn
await entity @a[name=newcomer,gamemode=adventure,team=sr.players,x=4995,y=212,z=-5,dx=10,dy=6,dz=10]
assert score newcomer sr.rules matches 0
dummy newcomer leave
