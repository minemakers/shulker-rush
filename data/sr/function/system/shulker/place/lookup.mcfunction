data modify storage sr:core pos set from entity @s Pos
summon minecraft:marker 0 0 0 {Tags:["sr.shulker_block"]}
execute as @e[type=minecraft:marker,tag=sr.shulker_block,limit=1] run function sr:system/shulker/place/marker
execute at @e[type=minecraft:marker,tag=sr.shulker_block,limit=1] positioned ~.5 ~9 ~.5 run function sr:system/shulker/place/block
kill @e[type=minecraft:marker,tag=sr.shulker_block,limit=1]
