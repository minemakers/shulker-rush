# @environment sr:game/arena1
# @max_ticks 300
# The upgrader menu sells each upgrade and explains each refusal.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy patron spawn
team join sr.yellow patron
execute as patron run function sr:system/player/init
execute as patron run function sr:system/player/respawn
await entity @a[name=patron,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 5
# Everything below runs in one tick and puts the team back as it was: other tests share this upgrader.
data modify storage sr:core _ set value []
scoreboard players operation #souls sr.var = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls
scoreboard players operation #shulker sr.var = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_level
scoreboard players operation #spawner sr.var = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.spawner_level
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_level 0
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.spawner_level 0
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls 50
# A shulker at full health cannot be healed.
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run loot replace entity patron player.cursor loot sr:content/upgrader/shulker_health
execute as patron at @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/purchase/handle
assert score #error sr.var matches 3
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run loot replace entity patron player.cursor loot sr:content/upgrader/enhanced_shulker
execute as patron at @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/purchase/handle
assert score #error sr.var matches 0
assert score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_level matches 1
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run loot replace entity patron player.cursor loot sr:content/upgrader/improved_spawner
execute as patron at @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/purchase/handle
assert score #error sr.var matches 0
assert score @e[type=minecraft:marker,tag=sr.spawner,tag=sr.iron,tag=sr.yellow,limit=1] sr.spawner_level matches 1
execute as @e[type=minecraft:shulker,team=sr.yellow] run function sr:system/shulker/damage
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run loot replace entity patron player.cursor loot sr:content/upgrader/shulker_health
execute as patron at @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/purchase/handle
assert score #error sr.var matches 0
assert score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 7
# An upgrade at its last level is refused.
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.sword_level 3
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run loot replace entity patron player.cursor loot sr:content/upgrader/sharpened_sword
execute as patron at @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/purchase/handle
assert score #error sr.var matches 2
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.sword_level 0
# A dead shulker cannot be healed.
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_health 0
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] at @s run loot replace entity patron player.cursor loot sr:content/upgrader/shulker_health
execute as patron at @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] run function sr:system/upgrader/purchase/handle
assert score #error sr.var matches 4
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_health 7
scoreboard players operation @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_level = #shulker sr.var
scoreboard players operation @e[type=minecraft:shulker,team=sr.yellow] sr.shulker_level = #shulker sr.var
scoreboard players operation @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.spawner_level = #spawner sr.var
scoreboard players operation @e[type=minecraft:marker,tag=sr.spawner,tag=sr.yellow] sr.spawner_level = #spawner sr.var
scoreboard players operation @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.souls = #souls sr.var
dummy patron leave
