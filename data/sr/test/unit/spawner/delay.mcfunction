# @dummy
# @environment sr:unit
# @max_ticks 60
# The delay of a spawner comes from the config, by resource and by level.
await entity @s[gamemode=adventure]
summon minecraft:marker ~ ~ ~ {Tags:["sr.probe","sr.spawner","sr.crystal"]}
assert result 600 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:spawner/delay
kill @e[type=minecraft:marker,tag=sr.probe]
summon minecraft:marker ~ ~ ~ {Tags:["sr.probe","sr.spawner","sr.iron"]}
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 0
assert result 40 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:spawner/delay
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 1
assert result 30 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:spawner/delay
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 2
assert result 25 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:spawner/delay
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 3
assert result 20 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:spawner/delay
kill @e[type=minecraft:marker,tag=sr.probe]
summon minecraft:marker ~ ~ ~ {Tags:["sr.probe","sr.spawner","sr.gold"]}
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 0
assert result 250 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:spawner/delay
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 1
assert result 200 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:spawner/delay
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 2
assert result 150 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:spawner/delay
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 3
assert result 100 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:spawner/delay
kill @e[type=minecraft:marker,tag=sr.probe]
