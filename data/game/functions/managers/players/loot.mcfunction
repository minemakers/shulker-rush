data modify block 0 0 0 Items set value []
execute if data entity @s Inventory[{Slot:0b,tag:{drop:1b}}] run item replace block 0 0 0 container.0 from entity @s hotbar.0
execute if data entity @s Inventory[{Slot:1b,tag:{drop:1b}}] run item replace block 0 0 0 container.1 from entity @s hotbar.1
execute if data entity @s Inventory[{Slot:2b,tag:{drop:1b}}] run item replace block 0 0 0 container.2 from entity @s hotbar.2
execute if data entity @s Inventory[{Slot:3b,tag:{drop:1b}}] run item replace block 0 0 0 container.3 from entity @s hotbar.3
execute if data entity @s Inventory[{Slot:4b,tag:{drop:1b}}] run item replace block 0 0 0 container.4 from entity @s hotbar.4
execute if data entity @s Inventory[{Slot:5b,tag:{drop:1b}}] run item replace block 0 0 0 container.5 from entity @s hotbar.5
execute if data entity @s Inventory[{Slot:6b,tag:{drop:1b}}] run item replace block 0 0 0 container.6 from entity @s hotbar.6
execute if data entity @s Inventory[{Slot:7b,tag:{drop:1b}}] run item replace block 0 0 0 container.7 from entity @s hotbar.7
execute if data entity @s Inventory[{Slot:8b,tag:{drop:1b}}] run item replace block 0 0 0 container.8 from entity @s hotbar.8
execute if data entity @s Inventory[{Slot:-106b,tag:{drop:1b}}] run item replace block 0 0 0 container.9 from entity @s weapon.offhand
loot spawn ~ ~ ~ mine 0 0 0 minecraft:air{contents:1b}

data modify block 0 0 0 Items set value []
execute if data entity @s Inventory[{Slot:9b,tag:{drop:1b}}] run item replace block 0 0 0 container.0 from entity @s inventory.0
execute if data entity @s Inventory[{Slot:10b,tag:{drop:1b}}] run item replace block 0 0 0 container.1 from entity @s inventory.1
execute if data entity @s Inventory[{Slot:11b,tag:{drop:1b}}] run item replace block 0 0 0 container.2 from entity @s inventory.2
execute if data entity @s Inventory[{Slot:12b,tag:{drop:1b}}] run item replace block 0 0 0 container.3 from entity @s inventory.3
execute if data entity @s Inventory[{Slot:13b,tag:{drop:1b}}] run item replace block 0 0 0 container.4 from entity @s inventory.4
execute if data entity @s Inventory[{Slot:14b,tag:{drop:1b}}] run item replace block 0 0 0 container.5 from entity @s inventory.5
execute if data entity @s Inventory[{Slot:15b,tag:{drop:1b}}] run item replace block 0 0 0 container.6 from entity @s inventory.6
execute if data entity @s Inventory[{Slot:16b,tag:{drop:1b}}] run item replace block 0 0 0 container.7 from entity @s inventory.7
execute if data entity @s Inventory[{Slot:17b,tag:{drop:1b}}] run item replace block 0 0 0 container.8 from entity @s inventory.8
execute if data entity @s Inventory[{Slot:18b,tag:{drop:1b}}] run item replace block 0 0 0 container.9 from entity @s inventory.9
execute if data entity @s Inventory[{Slot:19b,tag:{drop:1b}}] run item replace block 0 0 0 container.10 from entity @s inventory.10
execute if data entity @s Inventory[{Slot:20b,tag:{drop:1b}}] run item replace block 0 0 0 container.11 from entity @s inventory.11
execute if data entity @s Inventory[{Slot:21b,tag:{drop:1b}}] run item replace block 0 0 0 container.12 from entity @s inventory.12
execute if data entity @s Inventory[{Slot:22b,tag:{drop:1b}}] run item replace block 0 0 0 container.13 from entity @s inventory.13
execute if data entity @s Inventory[{Slot:23b,tag:{drop:1b}}] run item replace block 0 0 0 container.14 from entity @s inventory.14
execute if data entity @s Inventory[{Slot:24b,tag:{drop:1b}}] run item replace block 0 0 0 container.15 from entity @s inventory.15
execute if data entity @s Inventory[{Slot:25b,tag:{drop:1b}}] run item replace block 0 0 0 container.16 from entity @s inventory.16
execute if data entity @s Inventory[{Slot:26b,tag:{drop:1b}}] run item replace block 0 0 0 container.17 from entity @s inventory.17
execute if data entity @s Inventory[{Slot:27b,tag:{drop:1b}}] run item replace block 0 0 0 container.18 from entity @s inventory.18
execute if data entity @s Inventory[{Slot:28b,tag:{drop:1b}}] run item replace block 0 0 0 container.19 from entity @s inventory.19
execute if data entity @s Inventory[{Slot:29b,tag:{drop:1b}}] run item replace block 0 0 0 container.20 from entity @s inventory.20
execute if data entity @s Inventory[{Slot:30b,tag:{drop:1b}}] run item replace block 0 0 0 container.21 from entity @s inventory.21
execute if data entity @s Inventory[{Slot:31b,tag:{drop:1b}}] run item replace block 0 0 0 container.22 from entity @s inventory.22
execute if data entity @s Inventory[{Slot:32b,tag:{drop:1b}}] run item replace block 0 0 0 container.23 from entity @s inventory.23
execute if data entity @s Inventory[{Slot:33b,tag:{drop:1b}}] run item replace block 0 0 0 container.24 from entity @s inventory.24
execute if data entity @s Inventory[{Slot:34b,tag:{drop:1b}}] run item replace block 0 0 0 container.25 from entity @s inventory.25
execute if data entity @s Inventory[{Slot:35b,tag:{drop:1b}}] run item replace block 0 0 0 container.26 from entity @s inventory.26
loot spawn ~ ~ ~ mine 0 0 0 minecraft:air{contents:1b}

clear @s #game:all{drop:1b}