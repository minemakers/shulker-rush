# @environment sr:game/arena1
# @max_ticks 300
# Without the money the purchase is refused and nothing is given.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy miser spawn
team join sr.yellow miser
execute as miser run function sr:system/player/init
execute as miser run function sr:system/player/respawn
await entity @a[name=miser,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
tp miser 956.5 242 32.5
await delay 2
item replace entity miser player.cursor from block 955 245 32 container.2
item replace block 955 245 32 container.2 with minecraft:air
await chat "enough money" miser
assert not items entity miser container.* minecraft:iron_sword
assert items block 955 245 32 container.2 *[minecraft:custom_data~{shop_id:{}}]
dummy miser leave
