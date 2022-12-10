clear @s

data modify storage game:core players[].selected set value 1b
execute unless entity @s[tag=bit0] run data modify storage game:core players[{bit0:1b}].selected set value 1b
execute unless entity @s[tag=bit1] run data modify storage game:core players[{bit1:1b}].selected set value 1b
execute unless entity @s[tag=bit2] run data modify storage game:core players[{bit2:1b}].selected set value 1b
execute unless entity @s[tag=bit3] run data modify storage game:core players[{bit3:1b}].selected set value 1b
execute unless entity @s[tag=bit4] run data modify storage game:core players[{bit4:1b}].selected set value 1b
execute unless entity @s[tag=bit5] run data modify storage game:core players[{bit5:1b}].selected set value 1b
execute unless entity @s[tag=bit6] run data modify storage game:core players[{bit6:1b}].selected set value 1b
data modify storage game:core inventory set from storage game:core players[{selected:1b}].inventory

data modify block 0 0 0 Items set from storage game:core inventory
loot replace entity @s container.0 27 mine 0 0 0 minecraft:air{contents:1b}

data modify storage game:core inventory[{Slot:27b}].Slot set value 0b
data modify storage game:core inventory[{Slot:28b}].Slot set value 1b
data modify storage game:core inventory[{Slot:29b}].Slot set value 2b
data modify storage game:core inventory[{Slot:30b}].Slot set value 3b
data modify storage game:core inventory[{Slot:31b}].Slot set value 4b
data modify storage game:core inventory[{Slot:32b}].Slot set value 5b
data modify storage game:core inventory[{Slot:33b}].Slot set value 6b
data modify storage game:core inventory[{Slot:34b}].Slot set value 7b
data modify storage game:core inventory[{Slot:35b}].Slot set value 8b
data modify block 0 0 0 Items set from storage game:core inventory
loot replace entity @s inventory.18 9 mine 0 0 0 minecraft:air{contents:1b}

data remove storage game:core inventory[{Slot:0b}]
data remove storage game:core inventory[{Slot:1b}]
data remove storage game:core inventory[{Slot:2b}]
data remove storage game:core inventory[{Slot:3b}]
data modify storage game:core inventory[{Slot:100b}].Slot set value 0b
data modify storage game:core inventory[{Slot:101b}].Slot set value 1b
data modify storage game:core inventory[{Slot:102b}].Slot set value 2b
data modify storage game:core inventory[{Slot:103b}].Slot set value 3b
data modify block 0 0 0 Items set from storage game:core inventory
loot replace entity @s armor.feet 4 mine 0 0 0 minecraft:air{contents:1b}

data remove storage game:core inventory[{Slot:0b}]
execute if data storage game:core inventory[{Slot:-106b}] run data modify storage game:core inventory[{Slot:-106b}].Slot set value 0b
data modify block 0 0 0 Items set from storage game:core inventory
loot replace entity @s weapon.offhand 1 mine 0 0 0 minecraft:air{contents:1b}
