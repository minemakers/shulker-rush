# Alternated animation for the selected arena
execute if score $arena var matches 1 as @e[type=minecraft:armor_stand,tag=arena1] run data modify entity @s CustomName set value '{"text":" → Grassy Islands ← ","bold":"true","color":"green"}'
execute if score $arena var matches 2 as @e[type=minecraft:armor_stand,tag=arena2] run data modify entity @s CustomName set value '{"text":" → Cloudy Gates ← ","bold":"true","color":"aqua"}'
execute if score $arena var matches 3 as @e[type=minecraft:armor_stand,tag=arena3] run data modify entity @s CustomName set value '{"text":" → Mechanical Sky ← ","bold":"true","color":"dark_purple"}'

execute if score $status var matches 0 run schedule function game:resources/views/sequences/arena_picker2 12t replace