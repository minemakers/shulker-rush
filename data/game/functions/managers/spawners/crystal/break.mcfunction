playsound minecraft:block.amethyst_cluster.break master @a[distance=..15] ~ ~ ~ 0.7 1
particle minecraft:block amethyst_cluster ~ ~0.2 ~ 0.25 0.2 0.25 0.1 30

execute if block ~ ~ ~ minecraft:small_amethyst_bud run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:medium_amethyst_bud run setblock ~ ~ ~ minecraft:small_amethyst_bud
execute if block ~ ~ ~ minecraft:large_amethyst_bud run setblock ~ ~ ~ minecraft:medium_amethyst_bud
execute if block ~ ~ ~ minecraft:amethyst_cluster run setblock ~ ~ ~ minecraft:large_amethyst_bud

execute if block ~ ~ ~ minecraft:air run tp @s ~ ~-1.6 ~
