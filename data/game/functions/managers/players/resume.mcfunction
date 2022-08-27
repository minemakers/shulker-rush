effect give @s[gamemode=!spectator] minecraft:nausea 8 4 true
effect give @s[gamemode=!spectator] minecraft:weakness 5 2

scoreboard players operation #armorLevel var = @s armorLevel
scoreboard players operation @s[team=red] armorLevel = @e[type=minecraft:marker,tag=upgrader,tag=red] armorLevel
scoreboard players operation @s[team=blue] armorLevel = @e[type=minecraft:marker,tag=upgrader,tag=blue] armorLevel
scoreboard players operation @s[team=green] armorLevel = @e[type=minecraft:marker,tag=upgrader,tag=green] armorLevel
scoreboard players operation @s[team=yellow] armorLevel = @e[type=minecraft:marker,tag=upgrader,tag=yellow] armorLevel
execute unless score #armorLevel var = @s armorLevel run item modify entity @s armor.feet game:armor

scoreboard players operation #swordLevel var = @s swordLevel
scoreboard players operation @s[team=red] swordLevel = @e[type=minecraft:marker,tag=upgrader,tag=red] swordLevel
scoreboard players operation @s[team=blue] swordLevel = @e[type=minecraft:marker,tag=upgrader,tag=blue] swordLevel
scoreboard players operation @s[team=green] swordLevel = @e[type=minecraft:marker,tag=upgrader,tag=green] swordLevel
scoreboard players operation @s[team=yellow] swordLevel = @e[type=minecraft:marker,tag=upgrader,tag=yellow] swordLevel
execute unless score #swordLevel var = @s swordLevel run function #game:events/change_sword

execute if entity @s[team=red] run data modify block 0 0 0 Items set from storage game:tmp chests.red
execute if entity @s[team=blue] run data modify block 0 0 0 Items set from storage game:tmp chests.blue
execute if entity @s[team=green] run data modify block 0 0 0 Items set from storage game:tmp chests.green
execute if entity @s[team=yellow] run data modify block 0 0 0 Items set from storage game:tmp chests.yellow
loot replace entity @s enderchest.0 26 mine 0 0 0 minecraft:air{contents:1b}