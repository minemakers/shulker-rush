execute store success score #success sr.var if block ~ ~ ~ #sr:amethyst run loot spawn ~ ~0.25 ~ loot sr:item/crystal
execute if score #success sr.var matches 1 run function sr:system/spawner/crystal/break
