scoreboard players operation #timer.gold var = $timer.gold.0 config
scoreboard players operation #timer.gold var *= #100 const
execute if score @s spawnerLevel matches 0 run scoreboard players operation #timer.gold var /= $timer.gold.1 config
execute if score @s spawnerLevel matches 1 run scoreboard players operation #timer.gold var /= $timer.gold.2 config
execute if score @s spawnerLevel matches 2.. run scoreboard players operation #timer.gold var /= $timer.gold.3 config
scoreboard players remove #timer.gold var 100

scoreboard players operation #timer.iron var = $timer.iron.0 config
scoreboard players operation #timer.iron var *= #100 const
execute if score @s spawnerLevel matches 0 run scoreboard players operation #timer.iron var /= $timer.iron.1 config
execute if score @s spawnerLevel matches 1 run scoreboard players operation #timer.iron var /= $timer.iron.2 config
execute if score @s spawnerLevel matches 2.. run scoreboard players operation #timer.iron var /= $timer.iron.3 config
scoreboard players remove #timer.iron var 100

loot replace block ~ ~ ~ container.0 loot game:contents/upgraders/shulker_health
loot replace block ~ ~ ~ container.1 loot game:contents/upgraders/enhanced_shulker
loot replace block ~ ~ ~ container.2 loot game:contents/upgraders/sharpened_sword
loot replace block ~ ~ ~ container.3 loot game:contents/upgraders/reinforced_armor
loot replace block ~ ~ ~ container.4 loot game:contents/upgraders/improved_spawner

data modify entity @s[type=minecraft:marker] data.Items set from block ~ ~ ~ Items