data remove block 0 0 0 Items
item replace block 0 0 0 container.* from entity @s sr:drop/hands
loot spawn ~ ~ ~ mine 0 0 0 minecraft:stick[custom_data={drop_contents:1b}]

data remove block 0 0 0 Items
item replace block 0 0 0 container.* from entity @s sr:drop/inventory
loot spawn ~ ~ ~ mine 0 0 0 minecraft:stick[custom_data={drop_contents:1b}]

clear @s *[custom_data~{drop:1b}]
