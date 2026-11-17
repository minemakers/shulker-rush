execute at @s unless entity @e[type=minecraft:marker,tag=sr.useable_blocks,distance=..9] run summon minecraft:marker ~ ~ ~ {Tags:["sr.useable_blocks"]}

advancement revoke @s only sr:place_useable
