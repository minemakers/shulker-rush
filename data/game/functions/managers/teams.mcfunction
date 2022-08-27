kill @e[type=item]

execute as @a[team=!players,nbt=!{Inventory:[{Slot:8b}]}] run clear @s
execute as @a[team=!players,nbt=!{Inventory:[{Slot:8b}]}] run loot replace entity @s hotbar.8 loot game:contents/leave_team
execute at @e[type=minecraft:area_effect_cloud,tag=spectator] run particle minecraft:witch ~ ~-.75 ~ .2 .2 .2 0 1

execute at @e[type=minecraft:area_effect_cloud,tag=spectator] positioned ~ ~-1 ~ as @a[gamemode=adventure,distance=..0.7] run function #game:events/join_team
execute at @e[type=minecraft:area_effect_cloud,tag=spectator] positioned ~ ~-1 ~ as @a[gamemode=spectator,distance=..1.4] run function #game:events/leave_team