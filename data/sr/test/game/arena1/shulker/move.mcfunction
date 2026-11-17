# @environment sr:game/arena1
# @max_ticks 400
# A team picks up its shulker and places it again, on its own island only.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy mover spawn
team join sr.blue mover
execute as mover run function sr:system/player/init
execute as mover run function sr:system/player/respawn
await entity @a[name=mover,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 70
loot replace entity mover weapon.mainhand loot sr:item/shulker_picker
tp mover 1043.5 242 32.5 0 20
await delay 2
dummy mover use
await items entity mover weapon.mainhand minecraft:cyan_shulker_box
await not entity @e[type=minecraft:shulker,team=sr.blue]
assert entity @e[type=minecraft:shulker,team=sr.yellow]
# Outside of its island the shulker is refused and handed back.
setblock 1036 241 30 minecraft:stone
tp mover 1038.5 242 28.5
await delay 2
dummy mover use block 1036 241 30
await chat "outside of its island" mover
await items entity mover weapon.* minecraft:cyan_shulker_box
assert block 1036 242 30 minecraft:air
assert not entity @e[type=minecraft:shulker,team=sr.blue]
execute as mover at @s run function sr:system/shulker/error/block
await chat "error occured while placing" mover
# On its island it comes back, with its health.
tp mover 1047.5 242 28.5
await delay 2
dummy mover use block 1045 241 30
await entity @e[type=minecraft:shulker,team=sr.blue,x=1045,y=242,z=30,distance=..2]
assert block 1045 242 30 minecraft:air
assert score @e[type=minecraft:shulker,team=sr.blue,limit=1] sr.shulker_health matches 7
assert not items entity mover container.* minecraft:cyan_shulker_box
dummy mover leave
