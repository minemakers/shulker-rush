execute if score $status var matches 0 run schedule function game:resources/views/lobby/sequences/arena2 12t replace

# Alternated animation for the selected arena
execute if score $arena var matches 1 as @e[type=minecraft:armor_stand,tag=arena1] run data modify entity @s CustomName set from block 0 10 0 Text2
execute if score $arena var matches 2 as @e[type=minecraft:armor_stand,tag=arena2] run data modify entity @s CustomName set from block 0 10 0 Text2
execute if score $arena var matches 3 as @e[type=minecraft:armor_stand,tag=arena3] run data modify entity @s CustomName set from block 0 10 0 Text2
