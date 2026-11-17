# @environment sr:game/arena3
# @max_ticks 1500
# Everything the green team can do: souls, its shulker, every upgrade, its powers, its chest.
# The environment runs a game on the third arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 2900 236 15
await loaded 2986 236 -83
await loaded 3084 236 3
await loaded 2998 236 101
await loaded 2992 294 9
# The third arena only gives a shulker, spawners and a spawn point to the teams that had players when the game
# started: this test brings in the ones it needs.
execute unless entity @e[type=minecraft:shulker,team=sr.green] positioned 3062 231 2 run function sr:resource/prefab/shulker/variant/green
execute unless entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.green] positioned 3062.5 231 11.5 run function sr:resource/prefab/spawner/variant/green
execute unless entity @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.green] run summon minecraft:block_display 3084.5 236 3.5 {Tags:["sr.spawnpoint","sr.green"],Rotation:[90.0f,10.0f]}
execute unless entity @e[type=minecraft:shulker,team=sr.yellow] positioned 2999 231 79 run function sr:resource/prefab/shulker/variant/yellow
execute unless entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.yellow] positioned 2990.5 231 79.5 run function sr:resource/prefab/spawner/variant/yellow
execute unless entity @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.yellow] run summon minecraft:block_display 2998.5 236 101.5 {Tags:["sr.spawnpoint","sr.yellow"],Rotation:[180.0f,10.0f]}
dummy green_hero spawn
team join sr.green green_hero
execute as green_hero run function sr:system/player/init
execute as green_hero run function sr:system/player/respawn
dummy green_foe spawn
team join sr.yellow green_foe
execute as green_foe run function sr:system/player/init
execute as green_foe run function sr:system/player/respawn
await entity @a[name=green_hero,gamemode=adventure,team=sr.green]
await entity @a[name=green_foe,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 70
effect clear green_hero
effect clear green_foe
assert score @e[type=minecraft:shulker,team=sr.green,limit=1] sr.shulker_health matches 7
# A kill gives a soul to the team.
damage green_foe 100 minecraft:player_attack by green_hero
await chat "green_foe was killed by green_hero"
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] sr.souls matches 1
await entity @a[name=green_foe,gamemode=spectator]
await entity @a[name=green_foe,gamemode=adventure]
# An enemy hurts the shulker.
effect clear green_foe
dummy green_foe attack @e[type=minecraft:shulker,team=sr.green,limit=1]
await score @e[type=minecraft:shulker,team=sr.green,limit=1] sr.shulker_health matches 6
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] sr.shulker_health matches 6
# Every upgrade, up to its last level.
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] sr.souls 100
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/shulker_health
assert score #error sr.var matches 0
assert score @e[type=minecraft:shulker,team=sr.green,limit=1] sr.shulker_health matches 7
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] at @s run function sr:system/upgrader/handler/shulker_health
assert score #error sr.var matches 3
assert score green_hero sr.sword_level matches 3
assert score green_hero sr.armor_level matches 3
assert score @e[type=minecraft:shulker,team=sr.green,limit=1] sr.shulker_level matches 3
assert result 20 run execute as @e[type=minecraft:marker,tag=sr.spawner,tag=sr.iron,tag=sr.green,limit=1] run compute entity @s integer sr:spawner/delay
assert items entity green_hero armor.feet *[minecraft:enchantments~[{enchantments:"minecraft:protection",levels:3}]]
# The upgraded shulker helps its team and hinders enemies around it.
tp green_hero 3063.5 231 3.5
tp green_foe 3060.5 231 3.5
await entity @a[name=green_hero,nbt={active_effects:[{id:"minecraft:regeneration"}]}]
await entity @a[name=green_foe,nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}]
await entity @a[name=green_foe,nbt={active_effects:[{id:"minecraft:glowing"}]}]
tp green_foe 2998 236 101
# A player coming back gets the team's upgrades and chest.
execute as green_hero run function sr:system/player/resume
# The team chest.
tp green_hero 3063.5 231 16.5
await delay 2
item replace entity green_hero enderchest.0 with minecraft:raw_iron 5
await data entity @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.green,limit=1] data.chest[{id:"minecraft:raw_iron"}]
await not entity @a[tag=sr.lock]
# Moving the shulker.
loot replace entity green_hero weapon.mainhand loot sr:item/shulker_picker
tp green_hero 3062.5 231 -0.5 0 20
await delay 2
dummy green_hero use
await items entity green_hero weapon.mainhand minecraft:lime_shulker_box
await not entity @e[type=minecraft:shulker,team=sr.green]
dummy green_hero use block 3064 230 2
await entity @e[type=minecraft:shulker,team=sr.green,x=3064,y=231,z=2,distance=..2]
assert score @e[type=minecraft:shulker,team=sr.green,limit=1] sr.shulker_health matches 7
assert score @e[type=minecraft:shulker,team=sr.green,limit=1] sr.shulker_level matches 3
# Its shulker can be destroyed, which the whole server is told.
execute as @e[type=minecraft:shulker,team=sr.green] run function sr:event/shulker_death
await chat "The Green Shulker has been killed" green_hero
await not entity @e[type=minecraft:shulker,team=sr.green]
dummy green_hero leave
dummy green_foe leave
