scoreboard players reset @s sr.pickup

execute at @s[predicate=sr:target_shulker] at @e[type=minecraft:shulker,distance=..5,sort=nearest,limit=1] run function sr:system/shulker/pickup

advancement revoke @s only sr:pickup_shulker
