execute store success score $tmp var if block ~ ~ ~ #game:amethyst run loot spawn ~ ~0.3 ~ loot game:items/crystal

execute if score $tmp var matches 1 run function game:managers/spawners/crystal/update_cluster