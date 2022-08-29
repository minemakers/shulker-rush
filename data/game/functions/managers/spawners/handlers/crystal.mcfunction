execute if block ~ ~ ~ minecraft:large_amethyst_bud run setblock ~ ~ ~ minecraft:amethyst_cluster
execute if block ~ ~ ~ minecraft:medium_amethyst_bud run setblock ~ ~ ~ minecraft:large_amethyst_bud
execute if block ~ ~ ~ minecraft:small_amethyst_bud run setblock ~ ~ ~ minecraft:medium_amethyst_bud
# Make slime show up if there's amethyst
execute if block ~ ~ ~ minecraft:air run tp @e[type=minecraft:slime,tag=c_hitbox,distance=..2,limit=1] ~ ~-0.6 ~
execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:small_amethyst_bud