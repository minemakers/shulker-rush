execute if block ~ ~ ~ minecraft:small_amethyst_bud run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:medium_amethyst_bud run setblock ~ ~ ~ minecraft:small_amethyst_bud
execute if block ~ ~ ~ minecraft:large_amethyst_bud run setblock ~ ~ ~ minecraft:medium_amethyst_bud
execute if block ~ ~ ~ minecraft:amethyst_cluster run setblock ~ ~ ~ minecraft:large_amethyst_bud

execute if block ~ ~ ~ minecraft:air run tp @s ~ ~-1.6 ~