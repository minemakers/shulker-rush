execute if entity @s[advancements={sr:place_shulker={red=true}}] run scoreboard players set #shulker_type sr.var 1
execute if entity @s[advancements={sr:place_shulker={blue=true}}] run scoreboard players set #shulker_type sr.var 2
execute if entity @s[advancements={sr:place_shulker={green=true}}] run scoreboard players set #shulker_type sr.var 3
execute if entity @s[advancements={sr:place_shulker={yellow=true}}] run scoreboard players set #shulker_type sr.var 4

execute store result score #result sr.var run clone ~5 ~5 ~5 ~-5 ~-5 ~-5 -5 -15 -5 filtered #sr:shulkers

execute if score #result sr.var matches 0 run function sr:system/shulker/error/block
execute if score #result sr.var matches 1 run function sr:system/shulker/place/lookup

advancement revoke @s only sr:place_shulker
