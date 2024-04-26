execute store result score @s spawner_timer run data get entity @s data.timer

execute at @s[type=minecraft:marker,tag=spawner,tag=iron] run function game:managers/spawners/handlers/iron
execute at @s[type=minecraft:marker,tag=spawner,tag=gold] run function game:managers/spawners/handlers/gold
execute at @s[type=minecraft:marker,tag=spawner,tag=crystal] run function game:managers/spawners/handlers/crystal
