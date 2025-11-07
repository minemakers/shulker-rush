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

scoreboard players reset * player_id
scoreboard players set @a kill_count 0
scoreboard players set @a death_count 0
scoreboard players set @a armor_level 0
scoreboard players set @a sword_level 0

execute as @a[limit=1,sort=arbitrary] run function #game:resources/scenes/game
execute at @e[type=minecraft:block_display,tag=spawnpoint,tag=red] run spawnpoint @a[team=red] ~ ~ ~
execute at @e[type=minecraft:block_display,tag=spawnpoint,tag=blue] run spawnpoint @a[team=blue] ~ ~ ~
execute at @e[type=minecraft:block_display,tag=spawnpoint,tag=green] run spawnpoint @a[team=green] ~ ~ ~
execute at @e[type=minecraft:block_display,tag=spawnpoint,tag=yellow] run spawnpoint @a[team=yellow] ~ ~ ~

data remove storage game:core chests
data remove storage game:core players
loot replace entity @a enderchest.0 26 loot {}
execute as @a[team=!players,gamemode=!spectator] run function game:managers/players/init
execute as @a[team=!players,gamemode=!spectator] run function game:managers/players/respawn

schedule function #game:events/check_teams 1t
schedule function game:managers/shulkers/powers 1t
schedule function game:resources/views/screen/actionbar 1t
