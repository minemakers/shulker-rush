# @environment sr:game/arena3
# @max_ticks 1500
# Everything the blue team can do: souls, its shulker, every upgrade, its powers, its chest.
# The environment runs a game on the third arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 2900 236 15
await loaded 2986 236 -83
await loaded 3084 236 3
await loaded 2998 236 101
await loaded 2992 294 9
# The third arena only gives a shulker, spawners and a spawn point to the teams that had players when the game
# started: this test brings in the ones it needs.
execute unless entity @e[type=minecraft:shulker,team=sr.blue] positioned 2985 231 -61 run function sr:resource/prefab/shulker/variant/blue
execute unless entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.blue] positioned 2994.5 231 -60.5 run function sr:resource/prefab/spawner/variant/blue
execute unless entity @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.blue] run summon minecraft:block_display 2986 236 -83 {Tags:["sr.spawnpoint","sr.blue"],Rotation:[0.0f,10.0f]}
execute unless entity @e[type=minecraft:shulker,team=sr.green] positioned 3062 231 2 run function sr:resource/prefab/shulker/variant/green
execute unless entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.green] positioned 3062.5 231 11.5 run function sr:resource/prefab/spawner/variant/green
execute unless entity @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.green] run summon minecraft:block_display 3084.5 236 3.5 {Tags:["sr.spawnpoint","sr.green"],Rotation:[90.0f,10.0f]}
dummy blue_hero spawn
team join sr.blue blue_hero
execute as blue_hero run function sr:system/player/init
execute as blue_hero run function sr:system/player/respawn
dummy blue_foe spawn
team join sr.green blue_foe
execute as blue_foe run function sr:system/player/init
execute as blue_foe run function sr:system/player/respawn
await entity @a[name=blue_hero,gamemode=adventure,team=sr.blue]
await entity @a[name=blue_foe,gamemode=adventure,team=sr.green]
assert score $status sr.var matches 2
await delay 70
effect clear blue_hero
effect clear blue_foe
assert score @e[type=minecraft:shulker,team=sr.blue,limit=1] sr.shulker_health matches 7
# A kill gives a soul to the team.
damage blue_foe 100 minecraft:player_attack by blue_hero
await chat "blue_foe was killed by blue_hero"
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.souls matches 1
await entity @a[name=blue_foe,gamemode=spectator]
await entity @a[name=blue_foe,gamemode=adventure]
# An enemy hurts the shulker.
effect clear blue_foe
dummy blue_foe attack @e[type=minecraft:shulker,team=sr.blue,limit=1]
await score @e[type=minecraft:shulker,team=sr.blue,limit=1] sr.shulker_health matches 6
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.shulker_health matches 6
# Every upgrade, up to its last level.
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.souls 100
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/shulker_health
assert score #error sr.var matches 0
assert score @e[type=minecraft:shulker,team=sr.blue,limit=1] sr.shulker_health matches 7
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run function sr:system/upgrader/handler/shulker_health
assert score #error sr.var matches 3
assert score blue_hero sr.sword_level matches 3
assert score blue_hero sr.armor_level matches 3
assert score @e[type=minecraft:shulker,team=sr.blue,limit=1] sr.shulker_level matches 3
assert result 20 run execute as @e[type=minecraft:marker,tag=sr.spawner,tag=sr.iron,tag=sr.blue,limit=1] run compute entity @s integer sr:spawner/delay
assert items entity blue_hero armor.feet *[minecraft:enchantments~[{enchantments:"minecraft:protection",levels:3}]]
# The upgraded shulker helps its team and hinders enemies around it.
tp blue_hero 2986.5 231 -59.5
tp blue_foe 2983.5 231 -59.5
await entity @a[name=blue_hero,nbt={active_effects:[{id:"minecraft:regeneration"}]}]
await entity @a[name=blue_foe,nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}]
await entity @a[name=blue_foe,nbt={active_effects:[{id:"minecraft:glowing"}]}]
tp blue_foe 3084 236 3
# A player coming back gets the team's upgrades and chest.
execute as blue_hero run function sr:system/player/resume
# The team chest.
tp blue_hero 2999.5 231 -59.5
await delay 2
item replace entity blue_hero enderchest.0 with minecraft:raw_iron 5
await data entity @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] data.chest[{id:"minecraft:raw_iron"}]
await not entity @a[tag=sr.lock]
# Moving the shulker.
loot replace entity blue_hero weapon.mainhand loot sr:item/shulker_picker
tp blue_hero 2985.5 231 -63.5 0 20
await delay 2
dummy blue_hero use
await items entity blue_hero weapon.mainhand minecraft:cyan_shulker_box
await not entity @e[type=minecraft:shulker,team=sr.blue]
dummy blue_hero use block 2987 230 -61
await entity @e[type=minecraft:shulker,team=sr.blue,x=2987,y=231,z=-61,distance=..2]
assert score @e[type=minecraft:shulker,team=sr.blue,limit=1] sr.shulker_health matches 7
assert score @e[type=minecraft:shulker,team=sr.blue,limit=1] sr.shulker_level matches 3
# Its shulker can be destroyed, which the whole server is told.
execute as @e[type=minecraft:shulker,team=sr.blue] run function sr:event/shulker_death
await chat "The Blue Shulker has been killed" blue_hero
await not entity @e[type=minecraft:shulker,team=sr.blue]
dummy blue_hero leave
dummy blue_foe leave
