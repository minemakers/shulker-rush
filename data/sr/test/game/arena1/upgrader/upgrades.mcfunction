# @environment sr:game/arena1
# @max_ticks 300
# Upgrades reach the shulker and the spawners of the team, and an upgraded shulker heals its players.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy engineer spawn
team join sr.yellow engineer
execute as engineer run function sr:system/player/init
execute as engineer run function sr:system/player/respawn
await entity @a[name=engineer,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 5
# Everything below runs in one tick and puts the team back as it was: other tests share this upgrader.
data modify storage sr:core _ set value []
scoreboard players operation #souls sr.var = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls
scoreboard players operation #shulker sr.var = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_level
scoreboard players operation #spawner sr.var = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.spawner_level
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_level 0
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.spawner_level 0
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls 20
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 0
assert score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_level matches 1
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 0
assert score @e[type=minecraft:marker,tag=sr.spawner,tag=sr.iron,tag=sr.yellow,limit=1] sr.spawner_level matches 1
assert result 30 run execute as @e[type=minecraft:marker,tag=sr.spawner,tag=sr.iron,tag=sr.yellow,limit=1] run compute entity @s integer sr:spawner/delay
assert score @e[type=minecraft:marker,tag=sr.spawner,tag=sr.iron,tag=sr.blue,limit=1] sr.spawner_level matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/handler/shulker_health
assert score #error sr.var matches 3
execute as @e[type=minecraft:shulker,team=sr.yellow] run function sr:system/shulker/damage
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/handler/shulker_health
assert score #error sr.var matches 0
assert score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 7
scoreboard players operation @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_level = #shulker sr.var
scoreboard players operation @e[type=minecraft:shulker,team=sr.yellow] sr.shulker_level = #shulker sr.var
scoreboard players operation @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.spawner_level = #spawner sr.var
scoreboard players operation @e[type=minecraft:marker,tag=sr.spawner,tag=sr.yellow] sr.spawner_level = #spawner sr.var
scoreboard players operation @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls = #souls sr.var
# The shulker of an upgraded team heals its players nearby.
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_level 1
scoreboard players set @e[type=minecraft:shulker,team=sr.yellow] sr.shulker_level 1
tp engineer 967 242 33
await entity @a[name=engineer,nbt={active_effects:[{id:"minecraft:regeneration"}]}]
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_level 0
scoreboard players set @e[type=minecraft:shulker,team=sr.yellow] sr.shulker_level 0
dummy engineer leave
