# @dummy
# @environment sr:unit
# @max_ticks 60
# Mining large amethyst bud follows the map's own loot table.
await entity @s[gamemode=adventure]
setblock ~ ~ ~ minecraft:large_amethyst_bud
loot give @s mine ~ ~ ~ minecraft:wooden_pickaxe
assert items entity @s container.* minecraft:amethyst_shard
