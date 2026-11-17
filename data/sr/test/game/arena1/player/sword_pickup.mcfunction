# @environment sr:game/arena1
# @max_ticks 300
# A sword picked up from someone else takes the level of its new owner's team.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy squire spawn
team join sr.blue squire
execute as squire run function sr:system/player/init
execute as squire run function sr:system/player/respawn
await entity @a[name=squire,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 70
scoreboard players set squire sr.sword_level 1
loot give squire loot sr:equipment/wooden_sword
await items entity squire container.* minecraft:wooden_sword[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:1}]]
clear squire minecraft:wooden_sword
scoreboard players set squire sr.sword_level 2
give squire minecraft:stone_sword[minecraft:custom_data={sword:1b,sword_level:1}]
await items entity squire container.* minecraft:stone_sword[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:2}]]
clear squire minecraft:stone_sword
scoreboard players set squire sr.sword_level 3
give squire minecraft:iron_sword[minecraft:custom_data={sword:1b,sword_level:2}]
await items entity squire container.* minecraft:iron_sword[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:3}]]
clear squire minecraft:iron_sword
scoreboard players set squire sr.sword_level 0
item replace entity squire weapon.offhand with minecraft:golden_sword[minecraft:custom_data={sword:1b,sword_level:3}]
await items entity squire weapon.offhand minecraft:golden_sword[minecraft:custom_data~{sword_level:0}]
dummy squire leave
