scoreboard players add $index playerId 1
scoreboard players operation @s playerId = $index playerId

scoreboard players operation #bits var = @s playerId
execute if score #bits var matches 64.. run tag @s add bit6
execute if score #bits var matches 64.. run scoreboard players remove #bits var 64
execute if score #bits var matches 32.. run tag @s add bit5
execute if score #bits var matches 32.. run scoreboard players remove #bits var 32
execute if score #bits var matches 16.. run tag @s add bit4
execute if score #bits var matches 16.. run scoreboard players remove #bits var 16
execute if score #bits var matches 8.. run tag @s add bit3
execute if score #bits var matches 8.. run scoreboard players remove #bits var 8
execute if score #bits var matches 4.. run tag @s add bit2
execute if score #bits var matches 4.. run scoreboard players remove #bits var 4
execute if score #bits var matches 2.. run tag @s add bit1
execute if score #bits var matches 2.. run scoreboard players remove #bits var 2
execute if score #bits var matches 1 run tag @s add bit0

data modify storage game:core players append value {bit0:0b,bit1:0b,bit2:0b,bit3:0b,bit4:0b,bit5:0b,bit6:0b,selected:0b}
execute if entity @s[tag=bit0] run data modify storage game:core players[-1].bit0 set value 1b
execute if entity @s[tag=bit1] run data modify storage game:core players[-1].bit1 set value 1b
execute if entity @s[tag=bit2] run data modify storage game:core players[-1].bit2 set value 1b
execute if entity @s[tag=bit3] run data modify storage game:core players[-1].bit3 set value 1b
execute if entity @s[tag=bit4] run data modify storage game:core players[-1].bit4 set value 1b
execute if entity @s[tag=bit5] run data modify storage game:core players[-1].bit5 set value 1b
execute if entity @s[tag=bit6] run data modify storage game:core players[-1].bit6 set value 1b
