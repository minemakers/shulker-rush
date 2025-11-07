clear @s
$data modify storage game:core _ set from storage game:core players[{uuid:$(UUID)}]

data modify block 0 2 0 item set from storage game:core _.equipment.offhand
execute if data storage game:core _.equipment.offhand run item replace entity @s weapon.offhand from block 0 2 0 contents

data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:0b}]
execute if data storage game:core _.inventory[{Slot:0b}] run item replace entity @s hotbar.0 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:1b}]
execute if data storage game:core _.inventory[{Slot:1b}] run item replace entity @s hotbar.1 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:2b}]
execute if data storage game:core _.inventory[{Slot:2b}] run item replace entity @s hotbar.2 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:3b}]
execute if data storage game:core _.inventory[{Slot:3b}] run item replace entity @s hotbar.3 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:4b}]
execute if data storage game:core _.inventory[{Slot:4b}] run item replace entity @s hotbar.4 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:5b}]
execute if data storage game:core _.inventory[{Slot:5b}] run item replace entity @s hotbar.5 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:6b}]
execute if data storage game:core _.inventory[{Slot:6b}] run item replace entity @s hotbar.6 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:7b}]
execute if data storage game:core _.inventory[{Slot:7b}] run item replace entity @s hotbar.7 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:8b}]
execute if data storage game:core _.inventory[{Slot:8b}] run item replace entity @s hotbar.8 from block 0 2 0 contents

data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:9b}]
execute if data storage game:core _.inventory[{Slot:9b}] run item replace entity @s inventory.0 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:10b}]
execute if data storage game:core _.inventory[{Slot:10b}] run item replace entity @s inventory.1 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:11b}]
execute if data storage game:core _.inventory[{Slot:11b}] run item replace entity @s inventory.2 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:12b}]
execute if data storage game:core _.inventory[{Slot:12b}] run item replace entity @s inventory.3 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:13b}]
execute if data storage game:core _.inventory[{Slot:13b}] run item replace entity @s inventory.4 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:14b}]
execute if data storage game:core _.inventory[{Slot:14b}] run item replace entity @s inventory.5 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:15b}]
execute if data storage game:core _.inventory[{Slot:15b}] run item replace entity @s inventory.6 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:16b}]
execute if data storage game:core _.inventory[{Slot:16b}] run item replace entity @s inventory.7 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:17b}]
execute if data storage game:core _.inventory[{Slot:17b}] run item replace entity @s inventory.8 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:18b}]
execute if data storage game:core _.inventory[{Slot:18b}] run item replace entity @s inventory.9 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:19b}]
execute if data storage game:core _.inventory[{Slot:19b}] run item replace entity @s inventory.10 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:20b}]
execute if data storage game:core _.inventory[{Slot:20b}] run item replace entity @s inventory.11 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:21b}]
execute if data storage game:core _.inventory[{Slot:21b}] run item replace entity @s inventory.12 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:22b}]
execute if data storage game:core _.inventory[{Slot:22b}] run item replace entity @s inventory.13 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:23b}]
execute if data storage game:core _.inventory[{Slot:23b}] run item replace entity @s inventory.14 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:24b}]
execute if data storage game:core _.inventory[{Slot:24b}] run item replace entity @s inventory.15 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:25b}]
execute if data storage game:core _.inventory[{Slot:25b}] run item replace entity @s inventory.16 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:26b}]
execute if data storage game:core _.inventory[{Slot:26b}] run item replace entity @s inventory.17 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:27b}]
execute if data storage game:core _.inventory[{Slot:27b}] run item replace entity @s inventory.18 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:28b}]
execute if data storage game:core _.inventory[{Slot:28b}] run item replace entity @s inventory.19 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:29b}]
execute if data storage game:core _.inventory[{Slot:29b}] run item replace entity @s inventory.20 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:30b}]
execute if data storage game:core _.inventory[{Slot:30b}] run item replace entity @s inventory.21 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:31b}]
execute if data storage game:core _.inventory[{Slot:31b}] run item replace entity @s inventory.22 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:32b}]
execute if data storage game:core _.inventory[{Slot:32b}] run item replace entity @s inventory.23 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:33b}]
execute if data storage game:core _.inventory[{Slot:33b}] run item replace entity @s inventory.24 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:34b}]
execute if data storage game:core _.inventory[{Slot:34b}] run item replace entity @s inventory.25 from block 0 2 0 contents
data modify block 0 2 0 item set from storage game:core _.inventory[{Slot:35b}]
execute if data storage game:core _.inventory[{Slot:35b}] run item replace entity @s inventory.26 from block 0 2 0 contents
