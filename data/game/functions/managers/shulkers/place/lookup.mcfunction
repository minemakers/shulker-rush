data modify storage game:core pos set from entity @s Pos
summon minecraft:marker 0 0 0 {Tags:["shulker_block"]}
execute as @e[type=minecraft:marker,tag=shulker_block,limit=1] run function game:managers/shulkers/place/marker
execute at @e[type=minecraft:marker,tag=shulker_block,limit=1] positioned ~.5 ~9 ~.5 run function game:managers/shulkers/place/block
kill @e[type=minecraft:marker,tag=shulker_block,limit=1]