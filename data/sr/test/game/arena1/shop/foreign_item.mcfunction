# @environment sr:game/arena1
# @max_ticks 300
# Items that do not belong in a shop are handed back instead of being lost.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy smuggler spawn
team join sr.yellow smuggler
execute as smuggler run function sr:system/player/init
execute as smuggler run function sr:system/player/respawn
await entity @a[name=smuggler,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
tp smuggler 956.5 242 32.5
await delay 2
item replace block 955 245 32 container.26 with minecraft:stone 3
await items block 955 245 32 container.26 *[minecraft:custom_data~{shop_id:{}}]
item replace block 971 242 27 container.4 with minecraft:stone 3
await items block 971 242 27 container.4 *[minecraft:custom_data~{upgrade_id:{}}]
dummy smuggler leave
