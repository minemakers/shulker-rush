advancement revoke @s only game:change_inventory

data modify storage game:tmp players[].selected set value 1b
execute unless entity @s[tag=bit0] run data modify storage game:tmp players[{bit0:1b}].selected set value 1b
execute unless entity @s[tag=bit1] run data modify storage game:tmp players[{bit1:1b}].selected set value 1b
execute unless entity @s[tag=bit2] run data modify storage game:tmp players[{bit2:1b}].selected set value 1b
execute unless entity @s[tag=bit3] run data modify storage game:tmp players[{bit3:1b}].selected set value 1b
execute unless entity @s[tag=bit4] run data modify storage game:tmp players[{bit4:1b}].selected set value 1b
execute unless entity @s[tag=bit5] run data modify storage game:tmp players[{bit5:1b}].selected set value 1b
execute unless entity @s[tag=bit6] run data modify storage game:tmp players[{bit6:1b}].selected set value 1b

data modify storage game:tmp players[{selected:1b}].inventory set from entity @s Inventory