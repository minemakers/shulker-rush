# @environment sr:game/arena1
# @max_ticks 300
# A sharpened sword is paid in souls and enchants the swords of the whole team, and only of that team.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy smith spawn
team join sr.yellow smith
execute as smith run function sr:system/player/init
execute as smith run function sr:system/player/respawn
dummy onlooker spawn
team join sr.blue onlooker
execute as onlooker run function sr:system/player/init
execute as onlooker run function sr:system/player/respawn
await entity @a[name=smith,gamemode=adventure,team=sr.yellow]
await entity @a[name=onlooker,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 5
loot give smith loot sr:equipment/wooden_sword
# Everything below runs in one tick and puts the team back as it was: other tests share this upgrader.
data modify storage sr:core _ set value []
scoreboard players operation #souls sr.var = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls 5
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run loot replace entity smith player.cursor loot sr:content/upgrader/sharpened_sword
execute as smith at @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/purchase/handle
assert score #error sr.var matches 0
assert score smith sr.sword_level matches 1
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.sword_level matches 1
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls matches 1
assert score onlooker sr.sword_level matches 0
assert items entity smith container.* minecraft:wooden_sword[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:1}]]
assert items block 971 242 27 container.2 *[minecraft:custom_data~{upgrade_id:{}}]
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.sword_level 0
scoreboard players set @a[team=sr.yellow] sr.sword_level 0
execute as @a[team=sr.yellow] run function sr:system/player/sword/refresh
scoreboard players operation @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls = #souls sr.var
dummy smith leave
dummy onlooker leave
