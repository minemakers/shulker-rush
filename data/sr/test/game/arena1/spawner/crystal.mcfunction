# @environment sr:game/arena1
# @max_ticks 300
# Crystals grow over time; hitting a grown one drops a shard and shrinks it.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy miner spawn
team join sr.blue miner
execute as miner run function sr:system/player/init
execute as miner run function sr:system/player/respawn
await entity @a[name=miner,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 70
scoreboard players set @e[type=minecraft:marker,tag=sr.spawner,tag=sr.crystal,x=1006,y=237,z=47,distance=..2] sr.spawner_timer 1
await block 1006 237 47 minecraft:small_amethyst_bud
setblock 1006 237 47 minecraft:amethyst_cluster
execute as miner positioned 1006.5 237 47.5 run function sr:event/hit_crystal
assert block 1006 237 47 minecraft:large_amethyst_bud
assert entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard"}}]
dummy miner leave
