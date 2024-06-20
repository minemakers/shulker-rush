data modify storage game:core tmp set from entity @s Inventory
data remove storage game:core tmp[{components:{"minecraft:custom_data":{drop:0b}}}]

data modify block 0 0 0 Items set value []
data modify block 0 0 0 Items set from storage game:core tmp
# Drop slots 0-26
loot spawn ~ ~ ~ mine 0 0 0 minecraft:anvil[custom_data={drop_contents:1b}]

data modify block 0 0 0 Items set value []
execute if data storage game:core tmp[{Slot:27b}] run item replace block 0 0 0 container.0 from entity @s inventory.18
execute if data storage game:core tmp[{Slot:28b}] run item replace block 0 0 0 container.1 from entity @s inventory.19
execute if data storage game:core tmp[{Slot:29b}] run item replace block 0 0 0 container.2 from entity @s inventory.20
execute if data storage game:core tmp[{Slot:30b}] run item replace block 0 0 0 container.3 from entity @s inventory.21
execute if data storage game:core tmp[{Slot:31b}] run item replace block 0 0 0 container.4 from entity @s inventory.22
execute if data storage game:core tmp[{Slot:32b}] run item replace block 0 0 0 container.5 from entity @s inventory.23
execute if data storage game:core tmp[{Slot:33b}] run item replace block 0 0 0 container.6 from entity @s inventory.24
execute if data storage game:core tmp[{Slot:34b}] run item replace block 0 0 0 container.7 from entity @s inventory.25
execute if data storage game:core tmp[{Slot:35b}] run item replace block 0 0 0 container.8 from entity @s inventory.26
execute if data storage game:core tmp[{Slot:-106b}] run item replace block 0 0 0 container.26 from entity @s weapon.offhand
loot spawn ~ ~ ~ mine 0 0 0 minecraft:anvil[custom_data={drop_contents:1b}]

clear @s #game:all[custom_data~{drop:1b}]
