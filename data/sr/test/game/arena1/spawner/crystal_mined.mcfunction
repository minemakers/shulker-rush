# @environment sr:game/arena1
# @max_ticks 300
# Hitting a crystal shrinks it and drops a shard each time.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy driller spawn
team join sr.blue driller
execute as driller run function sr:system/player/init
execute as driller run function sr:system/player/respawn
await entity @a[name=driller,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 70
setblock 1006 260 -6 minecraft:medium_amethyst_bud
setblock 1006 259 -8 minecraft:stone
execute as @e[type=minecraft:interaction,tag=sr.crystal_hitbox,x=1006,y=260,z=-6,distance=..2] at @s run function sr:system/spawner/crystal/hitbox
tp driller 1006.5 260 -7.5
effect clear driller
await delay 2
dummy driller attack @e[type=minecraft:interaction,tag=sr.crystal_hitbox,x=1006,y=260,z=-6,distance=..2,limit=1]
await block 1006 260 -6 minecraft:small_amethyst_bud
await delay 2
dummy driller attack @e[type=minecraft:interaction,tag=sr.crystal_hitbox,x=1006,y=260,z=-6,distance=..2,limit=1]
await block 1006 260 -6 minecraft:air
assert entity @e[type=minecraft:item,nbt={Item:{id:"minecraft:amethyst_shard"}},x=1006,y=260,z=-6,distance=..4]
dummy driller leave
