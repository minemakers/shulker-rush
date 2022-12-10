execute store success score #success var if block ~ ~ ~ #game:amethyst run loot spawn ~ ~0.25 ~ loot game:items/crystal
execute if score #success var matches 1 run function game:managers/spawners/crystal/break
