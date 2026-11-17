# @environment sr:game/arena1
# @max_ticks 300
# Blocks placed by players are remembered, and scaffolding follows the same rule.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy builder spawn
team join sr.yellow builder
execute as builder run function sr:system/player/init
execute as builder run function sr:system/player/respawn
await entity @a[name=builder,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
loot replace entity builder weapon.mainhand loot sr:block/oak_planks
tp builder 964.5 242 28.5
await delay 2
dummy builder use block 967 241 30
await block 967 242 30 minecraft:oak_planks
await entity @e[type=minecraft:marker,tag=sr.useable_blocks,x=967,y=242,z=30,distance=..10]
loot replace entity builder weapon.mainhand loot sr:block/scaffolding
dummy builder use block 967 242 30
await block 967 243 30 minecraft:scaffolding
summon minecraft:falling_block 961.5 246 30.5 {BlockState:"minecraft:scaffolding",Time:1}
execute as builder at @s run function sr:event/place_scaffolding
await not entity @e[type=minecraft:falling_block,x=961,y=244,z=30,distance=..8]
setblock 967 243 30 minecraft:air
setblock 967 242 30 minecraft:air
dummy builder leave
