effect give @s[gamemode=!spectator] minecraft:nausea 8 4 true
effect give @s[gamemode=!spectator] minecraft:weakness 5 2

scoreboard players operation #armor_level var = @s armor_level
scoreboard players operation @s[team=red] armor_level = @e[type=minecraft:marker,tag=upgrader,tag=red] armor_level
scoreboard players operation @s[team=blue] armor_level = @e[type=minecraft:marker,tag=upgrader,tag=blue] armor_level
scoreboard players operation @s[team=green] armor_level = @e[type=minecraft:marker,tag=upgrader,tag=green] armor_level
scoreboard players operation @s[team=yellow] armor_level = @e[type=minecraft:marker,tag=upgrader,tag=yellow] armor_level
execute unless score #armor_level var = @s armor_level run item modify entity @s armor.feet game:armor

scoreboard players operation #sword_level var = @s sword_level
scoreboard players operation @s[team=red] sword_level = @e[type=minecraft:marker,tag=upgrader,tag=red] sword_level
scoreboard players operation @s[team=blue] sword_level = @e[type=minecraft:marker,tag=upgrader,tag=blue] sword_level
scoreboard players operation @s[team=green] sword_level = @e[type=minecraft:marker,tag=upgrader,tag=green] sword_level
scoreboard players operation @s[team=yellow] sword_level = @e[type=minecraft:marker,tag=upgrader,tag=yellow] sword_level
execute unless score #sword_level var = @s sword_level run function #game:events/replace_sword

execute if entity @s[team=red] run data modify block 0 0 0 Items set from storage game:core chests.red
execute if entity @s[team=blue] run data modify block 0 0 0 Items set from storage game:core chests.blue
execute if entity @s[team=green] run data modify block 0 0 0 Items set from storage game:core chests.green
execute if entity @s[team=yellow] run data modify block 0 0 0 Items set from storage game:core chests.yellow
item replace entity @s enderchest.0 from block 0 0 0 container.0
item replace entity @s enderchest.1 from block 0 0 0 container.1
item replace entity @s enderchest.2 from block 0 0 0 container.2
item replace entity @s enderchest.3 from block 0 0 0 container.3
item replace entity @s enderchest.4 from block 0 0 0 container.4
item replace entity @s enderchest.5 from block 0 0 0 container.5
item replace entity @s enderchest.6 from block 0 0 0 container.6
item replace entity @s enderchest.7 from block 0 0 0 container.7
item replace entity @s enderchest.8 from block 0 0 0 container.8
item replace entity @s enderchest.9 from block 0 0 0 container.9
item replace entity @s enderchest.10 from block 0 0 0 container.10
item replace entity @s enderchest.11 from block 0 0 0 container.11
item replace entity @s enderchest.12 from block 0 0 0 container.12
item replace entity @s enderchest.13 from block 0 0 0 container.13
item replace entity @s enderchest.14 from block 0 0 0 container.14
item replace entity @s enderchest.15 from block 0 0 0 container.15
item replace entity @s enderchest.16 from block 0 0 0 container.16
item replace entity @s enderchest.17 from block 0 0 0 container.17
item replace entity @s enderchest.18 from block 0 0 0 container.18
item replace entity @s enderchest.19 from block 0 0 0 container.19
item replace entity @s enderchest.20 from block 0 0 0 container.20
item replace entity @s enderchest.21 from block 0 0 0 container.21
item replace entity @s enderchest.22 from block 0 0 0 container.22
item replace entity @s enderchest.23 from block 0 0 0 container.23
item replace entity @s enderchest.24 from block 0 0 0 container.24
item replace entity @s enderchest.25 from block 0 0 0 container.25
item replace entity @s enderchest.26 from block 0 0 0 container.26
