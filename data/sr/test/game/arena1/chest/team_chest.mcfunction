# @environment sr:game/arena1
# @max_ticks 300
# The ender chest is shared by the team, and only by the team.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy keeper spawn
team join sr.blue keeper
execute as keeper run function sr:system/player/init
execute as keeper run function sr:system/player/respawn
dummy outsider spawn
team join sr.yellow outsider
execute as outsider run function sr:system/player/init
execute as outsider run function sr:system/player/respawn
await entity @a[name=keeper,gamemode=adventure,team=sr.blue]
await entity @a[name=outsider,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
dummy returner spawn
await entity @a[name=returner,gamemode=spectator,team=sr.players]
team join sr.blue returner
# Coming back before the team used its chest must not copy leftovers of the utility box.
item replace block 0 0 0 container.5 with minecraft:diamond
scoreboard players set returner sr.player_id 99
item replace entity returner enderchest.3 with minecraft:emerald
execute as returner run function sr:system/player/resume
scoreboard players set #count sr.var -1
execute store result score #count sr.var if items entity returner enderchest.* *
assert score #count sr.var matches 0
tp keeper 1055.5 242 32.5
await delay 2
item replace entity keeper enderchest.0 with minecraft:lapis_lazuli 5
await data entity @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] data.chest[{id:"minecraft:lapis_lazuli"}]
await items entity returner enderchest.0 minecraft:lapis_lazuli
assert not items entity outsider enderchest.0 minecraft:lapis_lazuli
assert not entity @a[tag=sr.lock]
dummy returner leave
dummy keeper leave
dummy outsider leave
