execute as @e[type=minecraft:marker,tag=sr.crystal,sort=nearest,limit=1] at @s run function sr:system/spawner/crystal/drop

advancement revoke @s only sr:hit_crystal
