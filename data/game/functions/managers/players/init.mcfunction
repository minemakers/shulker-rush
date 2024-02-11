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
