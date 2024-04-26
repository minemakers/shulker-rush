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
loot replace entity @s enderchest.0 26 mine 0 0 0 minecraft:anvil[custom_data={drop_contents:1b}]
