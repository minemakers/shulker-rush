advancement revoke @s only game:hit_crystal

execute as @e[type=minecraft:slime,tag=crystal_hitbox,distance=..6,limit=1] at @s positioned ~ ~0.7 ~ run function game:managers/spawners/crystal/drop