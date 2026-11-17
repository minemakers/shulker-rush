# @environment sr:game/arena3
# @max_ticks 1500
# Everything the yellow team can do: souls, its shulker, every upgrade, its powers, its chest.
# The environment runs a game on the third arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 2900 236 15
await loaded 2986 236 -83
await loaded 3084 236 3
await loaded 2998 236 101
await loaded 2992 294 9
# The third arena only gives a shulker, spawners and a spawn point to the teams that had players when the game
# started: this test brings in the ones it needs.
execute unless entity @e[type=minecraft:shulker,team=sr.yellow] positioned 2999 231 79 run function sr:resource/prefab/shulker/variant/yellow
execute unless entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.yellow] positioned 2990.5 231 79.5 run function sr:resource/prefab/spawner/variant/yellow
execute unless entity @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.yellow] run summon minecraft:block_display 2998.5 236 101.5 {Tags:["sr.spawnpoint","sr.yellow"],Rotation:[180.0f,10.0f]}
execute unless entity @e[type=minecraft:shulker,team=sr.red] positioned 2922 231 16 run function sr:resource/prefab/shulker/variant/red
execute unless entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.red] positioned 2922.5 231 7.5 run function sr:resource/prefab/spawner/variant/red
execute unless entity @e[type=minecraft:block_display,tag=sr.spawnpoint,tag=sr.red] run summon minecraft:block_display 2900 236 15 {Tags:["sr.spawnpoint","sr.red"],Rotation:[270.0f,10.0f]}
dummy yellow_hero spawn
team join sr.yellow yellow_hero
execute as yellow_hero run function sr:system/player/init
execute as yellow_hero run function sr:system/player/respawn
dummy yellow_foe spawn
team join sr.red yellow_foe
execute as yellow_foe run function sr:system/player/init
execute as yellow_foe run function sr:system/player/respawn
await entity @a[name=yellow_hero,gamemode=adventure,team=sr.yellow]
await entity @a[name=yellow_foe,gamemode=adventure,team=sr.red]
assert score $status sr.var matches 2
await delay 70
effect clear yellow_hero
effect clear yellow_foe
assert score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 7
# A kill gives a soul to the team.
damage yellow_foe 100 minecraft:player_attack by yellow_hero
await chat "yellow_foe was killed by yellow_hero"
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls matches 1
await entity @a[name=yellow_foe,gamemode=spectator]
await entity @a[name=yellow_foe,gamemode=adventure]
# An enemy hurts the shulker.
effect clear yellow_foe
dummy yellow_foe attack @e[type=minecraft:shulker,team=sr.yellow,limit=1]
await score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 6
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_health matches 6
# Every upgrade, up to its last level.
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls 100
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"enhanced_shulker",action:"upgrade_shulker"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"improved_spawner",action:"upgrade_spawner"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"sharpened_sword",action:"upgrade_sword"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:resource/view/game/gui/upgrader
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/level {id:"reinforced_armor",action:"upgrade_armor"}
assert score #error sr.var matches 2
scoreboard players set #error sr.var 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/shulker_health
assert score #error sr.var matches 0
assert score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 7
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run function sr:system/upgrader/handler/shulker_health
assert score #error sr.var matches 3
assert score yellow_hero sr.sword_level matches 3
assert score yellow_hero sr.armor_level matches 3
assert score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_level matches 3
assert result 20 run execute as @e[type=minecraft:marker,tag=sr.spawner,tag=sr.iron,tag=sr.yellow,limit=1] run compute entity @s integer sr:spawner/delay
assert items entity yellow_hero armor.feet *[minecraft:enchantments~[{enchantments:"minecraft:protection",levels:3}]]
# The upgraded shulker helps its team and hinders enemies around it.
tp yellow_hero 3000.5 231 80.5
tp yellow_foe 2997.5 231 80.5
await entity @a[name=yellow_hero,nbt={active_effects:[{id:"minecraft:regeneration"}]}]
await entity @a[name=yellow_foe,nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}]
await entity @a[name=yellow_foe,nbt={active_effects:[{id:"minecraft:glowing"}]}]
tp yellow_foe 2900 236 15
# A player coming back gets the team's upgrades and chest.
execute as yellow_hero run function sr:system/player/resume
# The team chest.
tp yellow_hero 2987.5 231 80.5
await delay 2
item replace entity yellow_hero enderchest.0 with minecraft:raw_iron 5
await data entity @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] data.chest[{id:"minecraft:raw_iron"}]
await not entity @a[tag=sr.lock]
# Moving the shulker.
loot replace entity yellow_hero weapon.mainhand loot sr:item/shulker_picker
tp yellow_hero 2999.5 231 76.5 0 20
await delay 2
dummy yellow_hero use
await items entity yellow_hero weapon.mainhand minecraft:yellow_shulker_box
await not entity @e[type=minecraft:shulker,team=sr.yellow]
dummy yellow_hero use block 3001 230 79
await entity @e[type=minecraft:shulker,team=sr.yellow,x=3001,y=231,z=79,distance=..2]
assert score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 7
assert score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_level matches 3
# Its shulker can be destroyed, which the whole server is told.
execute as @e[type=minecraft:shulker,team=sr.yellow] run function sr:event/shulker_death
await chat "The Yellow Shulker has been killed" yellow_hero
await not entity @e[type=minecraft:shulker,team=sr.yellow]
dummy yellow_hero leave
dummy yellow_foe leave
