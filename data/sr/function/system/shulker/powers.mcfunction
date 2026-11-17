execute as @e[type=minecraft:shulker,scores={sr.shulker_level=1..}] at @s run function sr:system/shulker/powers/apply

execute if score $status sr.var matches 2 run schedule function sr:system/shulker/powers 18t
