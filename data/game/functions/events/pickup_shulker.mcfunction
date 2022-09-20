scoreboard players reset @s pickup

execute at @s[predicate=game:target_shulker] at @e[type=minecraft:shulker,distance=..5,sort=nearest,limit=1] run function game:managers/shulkers/pickup