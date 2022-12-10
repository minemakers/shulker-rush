execute as @s[tag=iron,scores={spawnerLevel=0}] store result entity @s data.timer int 1 run scoreboard players get $timer.iron.0 config
execute as @s[tag=iron,scores={spawnerLevel=1}] store result entity @s data.timer int 1 run scoreboard players get $timer.iron.1 config
execute as @s[tag=iron,scores={spawnerLevel=2}] store result entity @s data.timer int 1 run scoreboard players get $timer.iron.2 config
execute as @s[tag=iron,scores={spawnerLevel=3}] store result entity @s data.timer int 1 run scoreboard players get $timer.iron.3 config

execute as @s[tag=gold,scores={spawnerLevel=0}] store result entity @s data.timer int 1 run scoreboard players get $timer.gold.0 config
execute as @s[tag=gold,scores={spawnerLevel=1}] store result entity @s data.timer int 1 run scoreboard players get $timer.gold.1 config
execute as @s[tag=gold,scores={spawnerLevel=2}] store result entity @s data.timer int 1 run scoreboard players get $timer.gold.2 config
execute as @s[tag=gold,scores={spawnerLevel=3}] store result entity @s data.timer int 1 run scoreboard players get $timer.gold.3 config
