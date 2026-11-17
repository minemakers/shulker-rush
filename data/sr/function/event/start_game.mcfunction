scoreboard players set $status sr.var 2
gamerule fall_damage true

clear @a

scoreboard players reset * sr.player_id
scoreboard players set @a sr.kill_count 0
scoreboard players set @a sr.death_count 0
scoreboard players set @a sr.armor_level 0
scoreboard players set @a sr.sword_level 0

function sr:resource/scene/game
execute at @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.red] run spawnpoint @a[team=sr.red] ~ ~ ~
execute at @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.blue] run spawnpoint @a[team=sr.blue] ~ ~ ~
execute at @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.green] run spawnpoint @a[team=sr.green] ~ ~ ~
execute at @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.yellow] run spawnpoint @a[team=sr.yellow] ~ ~ ~

data remove storage sr:core chests
loot replace entity @a enderchest.0 26 loot {}
execute as @a[team=!sr.players,gamemode=!spectator] run function sr:system/player/init
execute as @a[team=!sr.players,gamemode=!spectator] run function sr:system/player/respawn

schedule function sr:state/game/check_teams 1t
schedule function sr:system/shulker/powers 1t
schedule function sr:resource/view/game/actionbar 1t
