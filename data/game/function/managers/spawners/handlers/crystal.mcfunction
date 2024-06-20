execute if block ~ ~ ~ minecraft:large_amethyst_bud run setblock ~ ~ ~ minecraft:amethyst_cluster
execute if block ~ ~ ~ minecraft:medium_amethyst_bud run setblock ~ ~ ~ minecraft:large_amethyst_bud
execute if block ~ ~ ~ minecraft:small_amethyst_bud run setblock ~ ~ ~ minecraft:medium_amethyst_bud
execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:small_amethyst_bud

execute as @e[type=minecraft:interaction,tag=crystal_hitbox,sort=nearest,limit=1] run function game:managers/spawners/crystal/hitbox
