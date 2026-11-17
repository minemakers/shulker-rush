kill @e[type=minecraft:item]

execute as @a[team=!sr.players] unless items entity @s hotbar.8 * run clear @s
execute as @a[team=!sr.players] unless items entity @s hotbar.8 * run loot replace entity @s hotbar.8 loot sr:content/leave_team
execute at @e[type=minecraft:text_display,tag=sr.spectator] run particle minecraft:witch ~ ~-1.7 ~ .2 .2 .2 0 1

execute at @e[type=minecraft:text_display,tag=sr.spectator] positioned ~ ~-2 ~ as @a[gamemode=adventure,distance=..0.7] run function sr:event/join_team
execute at @e[type=minecraft:text_display,tag=sr.spectator] positioned ~ ~-2 ~ as @a[gamemode=spectator,distance=..1.4] run function sr:event/leave_team
