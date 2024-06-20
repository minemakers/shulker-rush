execute as @s[tag=iron,scores={spawner_level=0}] store result entity @s data.timer int 1 run scoreboard players get $timer.iron.0 config
execute as @s[tag=iron,scores={spawner_level=1}] store result entity @s data.timer int 1 run scoreboard players get $timer.iron.1 config
execute as @s[tag=iron,scores={spawner_level=2}] store result entity @s data.timer int 1 run scoreboard players get $timer.iron.2 config
execute as @s[tag=iron,scores={spawner_level=3}] store result entity @s data.timer int 1 run scoreboard players get $timer.iron.3 config

execute as @s[tag=gold,scores={spawner_level=0}] store result entity @s data.timer int 1 run scoreboard players get $timer.gold.0 config
execute as @s[tag=gold,scores={spawner_level=1}] store result entity @s data.timer int 1 run scoreboard players get $timer.gold.1 config
execute as @s[tag=gold,scores={spawner_level=2}] store result entity @s data.timer int 1 run scoreboard players get $timer.gold.2 config
execute as @s[tag=gold,scores={spawner_level=3}] store result entity @s data.timer int 1 run scoreboard players get $timer.gold.3 config
