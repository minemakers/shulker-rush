# @environment sr:game/arena1
# @max_ticks 300
# Without enough souls the upgrade is refused.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy pauper spawn
team join sr.blue pauper
execute as pauper run function sr:system/player/init
execute as pauper run function sr:system/player/respawn
await entity @a[name=pauper,gamemode=adventure,team=sr.blue]
assert score $status sr.var matches 2
await delay 5
# Everything below runs in one tick and puts the team back as it was: other tests share this upgrader.
data modify storage sr:core _ set value []
scoreboard players operation #souls sr.var = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.souls
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.souls 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run loot replace entity pauper player.cursor loot sr:content/upgrader/sharpened_sword
execute as pauper at @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] run function sr:system/upgrader/purchase/handle
assert score #error sr.var matches 1
assert score pauper sr.sword_level matches 0
scoreboard players operation @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.souls = #souls sr.var
dummy pauper leave
