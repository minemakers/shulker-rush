# @environment sr:scenario/arena3
# @max_ticks 900
# A whole match with four teams on the third arena, until only one is left.
await loaded 5000 216 0
await loaded 2900 236 15
await loaded 2986 236 -83
await loaded 3084 236 3
await loaded 2998 236 101
await loaded 2992 294 9
execute as @a run dummy @s leave
await not entity @a
await delay 5
dummy alice spawn
dummy bob spawn
dummy carol spawn
dummy dave spawn
await entity @a[name=dave,gamemode=adventure,team=sr.players]
execute as alice at @s run function sr:event/ready_game
await score $status sr.var matches 1
await entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow]
dummy alice use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.red,limit=1]
dummy bob use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.blue,limit=1]
dummy carol use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.green,limit=1]
dummy dave use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow,limit=1]
await entity @a[name=alice,team=sr.red]
await entity @a[name=bob,team=sr.blue]
await entity @a[name=carol,team=sr.green]
await entity @a[name=dave,team=sr.yellow]
await chat "joined the Green Team" carol
await score $status sr.var matches 2
assert result 4 run execute if entity @e[type=minecraft:shulker]
assert result 4 run execute if entity @e[type=minecraft:block_display,tag=sr.spawnpoint]
assert result 4 run execute if entity @e[type=minecraft:villager]
# Merchants sell crystals, gold and fast travel, and keep their trades after a fast travel.
assert data entity @e[type=minecraft:villager,limit=1] Offers.Recipes[2].sell
execute as carol at @s run function sr:event/fast_travel
await delay 5
assert data entity @e[type=minecraft:villager,limit=1] Offers.Recipes[2].sell
assert not data entity @e[type=minecraft:villager,limit=1] Offers.Recipes[3]
assert not block 3084 236 3 minecraft:nether_portal
assert entity @a[name=carol,gamemode=adventure]
# Last team standing.
execute as @e[type=minecraft:shulker,team=sr.blue] run function sr:system/shulker/damage
execute as @e[type=minecraft:shulker,team=sr.blue] run function sr:event/shulker_death
kill bob
await chat "Sorry, bob you are eliminated!"
execute as @e[type=minecraft:shulker,team=sr.green] run function sr:system/shulker/damage
execute as @e[type=minecraft:shulker,team=sr.green] run function sr:event/shulker_death
kill carol
await chat "Sorry, carol you are eliminated!"
execute as @e[type=minecraft:shulker,team=sr.yellow] run function sr:system/shulker/damage
execute as @e[type=minecraft:shulker,team=sr.yellow] run function sr:event/shulker_death
kill dave
await chat "Sorry, dave you are eliminated!"
await chat "The Red Team won the game"
await score $status sr.var matches 0
await entity @a[name=alice,gamemode=adventure,team=sr.players]
await not entity @e[type=minecraft:shulker,team=sr.red]
