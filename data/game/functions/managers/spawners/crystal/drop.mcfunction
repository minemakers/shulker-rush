execute store success score $tmp var if block ~ ~ ~ #game:amethyst run loot spawn ~ ~ ~ loot game:items/crystal

execute if score $tmp var matches 1 run playsound minecraft:block.amethyst_cluster.break master @a[distance=..15] ~ ~ ~ 0.5 1
execute if score $tmp var matches 1 run function game:managers/spawners/crystal/update_cluster