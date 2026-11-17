# @environment sr:game/arena1
# @max_ticks 300
# The explosive bottle's cloud blows up and breaks player-placed blocks.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy brewer spawn
team join sr.blue brewer
execute as brewer run function sr:system/player/init
execute as brewer run function sr:system/player/respawn
await entity @a[name=brewer,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 70
setblock 1052 243 20 minecraft:oak_planks
summon minecraft:area_effect_cloud 1052 242 21 {potion_contents:{potion:"minecraft:awkward",custom_color:10362141},Duration:100,Radius:1f}
await block 1052 243 20 minecraft:air
assert not entity @e[type=minecraft:area_effect_cloud]
dummy brewer leave
