# @dummy
# @environment sr:unit
# @max_ticks 60
# Fishing only gives what the map allows.
await entity @s[gamemode=adventure]
loot give @s fish minecraft:gameplay/fishing ~ ~ ~ minecraft:fishing_rod
assert items entity @s container.* *
