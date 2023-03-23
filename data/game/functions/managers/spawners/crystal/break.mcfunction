playsound minecraft:block.amethyst_cluster.break master @a ~ ~ ~ 0.7 1
particle minecraft:block amethyst_cluster ~ ~0.2 ~ 0.25 0.2 0.25 0.1 30

execute if block ~ ~ ~ minecraft:small_amethyst_bud run setblock ~ ~ ~ minecraft:air
execute if block ~ ~ ~ minecraft:medium_amethyst_bud run setblock ~ ~ ~ minecraft:small_amethyst_bud
execute if block ~ ~ ~ minecraft:large_amethyst_bud run setblock ~ ~ ~ minecraft:medium_amethyst_bud
execute if block ~ ~ ~ minecraft:amethyst_cluster run setblock ~ ~ ~ minecraft:large_amethyst_bud

execute as @e[type=minecraft:interaction,tag=crystal_hitbox,sort=nearest,limit=1] run function game:managers/spawners/crystal/hitbox
