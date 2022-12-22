scoreboard players set $status var 2
gamerule fallDamage true

clear @a
tag @a remove bit0
tag @a remove bit1
tag @a remove bit2
tag @a remove bit3
tag @a remove bit4
tag @a remove bit5
tag @a remove bit6

scoreboard players reset * playerId
scoreboard players set @a killCount 0
scoreboard players set @a deathCount 0
scoreboard players set @a armorLevel 0
scoreboard players set @a swordLevel 0

execute as @a[limit=1,sort=arbitrary] run function #game:resources/scenes/game
execute at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=red] run spawnpoint @a[team=red] ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=blue] run spawnpoint @a[team=blue] ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=green] run spawnpoint @a[team=green] ~ ~ ~
execute at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,tag=yellow] run spawnpoint @a[team=yellow] ~ ~ ~

data merge block 0 0 0 {Items:[]}
data remove storage game:core chests
data remove storage game:core players
loot replace entity @a enderchest.0 26 mine 0 0 0 minecraft:air{contents:1b}
execute as @a[team=!players,gamemode=!spectator] run function game:managers/players/init
execute as @a[team=!players,gamemode=!spectator] run function game:managers/players/respawn

schedule function #game:events/check_teams 1t
schedule function game:managers/shulkers/powers 1t
schedule function game:resources/views/screen/actionbar 1t
