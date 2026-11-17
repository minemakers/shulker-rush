# @environment sr:game/arena3
# @max_ticks 300
# The explosive bottle hurts the players of every team around it.
# The environment runs a game on the third arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 2900 236 15
await loaded 2986 236 -83
await loaded 3084 236 3
await loaded 2998 236 101
await loaded 2992 294 9
# The third arena only gives a shulker, spawners and a spawn point to the teams that had players when the game
# started: this test brings in the ones it needs.
execute unless entity @e[type=minecraft:shulker,team=sr.red] positioned 2922 231 16 run function sr:resource/prefab/shulker/variant/red
execute unless entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.red] positioned 2922.5 231 7.5 run function sr:resource/prefab/spawner/variant/red
execute unless entity @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.red] run summon minecraft:block_display 2900 236 15 {Tags:["sr.spawnpoint","sr.red"],Rotation:[270.0f,10.0f]}
execute unless entity @e[type=minecraft:shulker,team=sr.blue] positioned 2985 231 -61 run function sr:resource/prefab/shulker/variant/blue
execute unless entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.blue] positioned 2994.5 231 -60.5 run function sr:resource/prefab/spawner/variant/blue
execute unless entity @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.blue] run summon minecraft:block_display 2986 236 -83 {Tags:["sr.spawnpoint","sr.blue"],Rotation:[0.0f,10.0f]}
execute unless entity @e[type=minecraft:shulker,team=sr.green] positioned 3062 231 2 run function sr:resource/prefab/shulker/variant/green
execute unless entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.green] positioned 3062.5 231 11.5 run function sr:resource/prefab/spawner/variant/green
execute unless entity @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.green] run summon minecraft:block_display 3084.5 236 3.5 {Tags:["sr.spawnpoint","sr.green"],Rotation:[90.0f,10.0f]}
execute unless entity @e[type=minecraft:shulker,team=sr.yellow] positioned 2999 231 79 run function sr:resource/prefab/shulker/variant/yellow
execute unless entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.yellow] positioned 2990.5 231 79.5 run function sr:resource/prefab/spawner/variant/yellow
execute unless entity @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.yellow] run summon minecraft:block_display 2998.5 236 101.5 {Tags:["sr.spawnpoint","sr.yellow"],Rotation:[180.0f,10.0f]}
dummy b_red spawn
team join sr.red b_red
execute as b_red run function sr:system/player/init
execute as b_red run function sr:system/player/respawn
dummy b_blue spawn
team join sr.blue b_blue
execute as b_blue run function sr:system/player/init
execute as b_blue run function sr:system/player/respawn
dummy b_green spawn
team join sr.green b_green
execute as b_green run function sr:system/player/init
execute as b_green run function sr:system/player/respawn
dummy b_yellow spawn
team join sr.yellow b_yellow
execute as b_yellow run function sr:system/player/init
execute as b_yellow run function sr:system/player/respawn
await entity @a[name=b_red,gamemode=adventure,team=sr.red]
await entity @a[name=b_blue,gamemode=adventure,team=sr.blue]
await entity @a[name=b_green,gamemode=adventure,team=sr.green]
await entity @a[name=b_yellow,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
effect clear b_red
effect clear b_blue
effect clear b_green
effect clear b_yellow
tp b_red 2930.5 231 24.5
tp b_blue 2932.0 231 24.5
tp b_green 2933.0 231 24.5
tp b_yellow 2934.0 231 24.5
await delay 5
summon minecraft:area_effect_cloud 2930.5 231 24.5 {potion_contents:{potion:"minecraft:awkward",custom_color:10362141},Duration:100,Radius:1f}
await not entity @e[type=minecraft:area_effect_cloud,x=2930,y=231,z=24,distance=..3]
await delay 2
assert not entity @a[name=b_yellow,nbt={Health:20f}]
dummy b_red leave
dummy b_blue leave
dummy b_green leave
dummy b_yellow leave
