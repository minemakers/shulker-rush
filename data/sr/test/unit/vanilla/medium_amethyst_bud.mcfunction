# @dummy
# @environment sr:unit
# @max_ticks 60
# Mining medium amethyst bud follows the map's own loot table.
await entity @s[gamemode=adventure]
setblock ~ ~ ~ minecraft:medium_amethyst_bud
loot give @s mine ~ ~ ~ minecraft:wooden_pickaxe
assert items entity @s container.* minecraft:amethyst_shard
