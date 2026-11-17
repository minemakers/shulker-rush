# @environment sr:game/arena3
# @max_ticks 300
# Merchants sell crystals, gold and one fast travel at a time, and keep their trades after a fast travel.
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
dummy trader spawn
team join sr.green trader
execute as trader run function sr:system/player/init
execute as trader run function sr:system/player/respawn
await entity @a[name=trader,gamemode=adventure,team=sr.green]
assert score $status sr.var matches 2
await delay 5
assert result 4 run execute if entity @e[type=minecraft:villager]
assert data entity @e[type=minecraft:villager,limit=1] Offers.Recipes[2].sell
# The fast travel is sold one at a time, and is back in stock once the buyer has travelled.
assert data entity @e[type=minecraft:villager,limit=1] Offers.Recipes[{maxUses:1}].sell
assert data entity @e[type=minecraft:villager,limit=1] Offers.Recipes[{maxUses:9999999}].sell
execute as @e[type=minecraft:villager] run data modify entity @s Offers.Recipes[2].uses set value 1
assert result 4 run execute if entity @e[type=minecraft:villager,nbt={Offers:{Recipes:[{maxUses:1,uses:1}]}}]
execute as trader at @s run function sr:event/fast_travel
await delay 5
assert not entity @e[type=minecraft:villager,nbt={Offers:{Recipes:[{maxUses:1,uses:1}]}}]
assert data entity @e[type=minecraft:villager,limit=1] Offers.Recipes[2].sell
assert not data entity @e[type=minecraft:villager,limit=1] Offers.Recipes[3]
assert not block 3084 236 3 minecraft:nether_portal
assert entity @a[name=trader,gamemode=adventure]
dummy trader leave
