# @dummy
# @environment sr:unit
# @max_ticks 60
# The upgrader menu shows how much faster the next spawner level is than the first one.
await entity @s[gamemode=adventure]
summon minecraft:marker ~ ~ ~ {Tags:["sr.probe"]}
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 0
assert result 33 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:upgrader/spawner_bonus/iron
assert result 25 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:upgrader/spawner_bonus/gold
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 1
assert result 60 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:upgrader/spawner_bonus/iron
assert result 66 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:upgrader/spawner_bonus/gold
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 2
assert result 100 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:upgrader/spawner_bonus/iron
assert result 150 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:upgrader/spawner_bonus/gold
scoreboard players set @e[type=minecraft:marker,tag=sr.probe] sr.spawner_level 3
assert result 100 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:upgrader/spawner_bonus/iron
assert result 150 run execute as @e[type=minecraft:marker,tag=sr.probe] run compute entity @s integer sr:upgrader/spawner_bonus/gold
kill @e[type=minecraft:marker,tag=sr.probe]
