# @environment sr:game/arena2
# @max_ticks 100
# A game on the second arena has two teams, each with its shulker, shop, upgrader, spawners and spawn point.
await loaded 5000 216 0
await loaded 2026 229 0
await loaded 2026 209 53
await loaded 2026 209 -55
# Entities only show up once their chunk also ticks them.
await delay 20
assert score $status sr.var matches 2
assert result 2 run execute if entity @e[type=minecraft:shulker]
assert entity @e[type=minecraft:shulker,team=sr.blue]
assert entity @e[type=minecraft:shulker,team=sr.yellow]
assert result 2 run execute if entity @e[type=minecraft:marker,tag=sr.shop]
assert result 2 run execute if entity @e[type=minecraft:marker,tag=sr.upgrader]
assert result 2 run execute if entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.iron]
assert result 2 run execute if entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.crystal]
assert result 2 run execute if entity @e[type=minecraft:block_display,tag=sr.spawnpoint]
