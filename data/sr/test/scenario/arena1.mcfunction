# @environment sr:scenario/arena1
# @max_ticks 900
# A whole match on the first arena, played by two players: they launch the game, pick their teams, one team
# destroys the other's shulker hit after hit, eliminates its player and wins, and the lobby comes back clean.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
execute as @a run dummy @s leave
await not entity @a
await delay 5
dummy alice spawn
dummy bob spawn
await entity @a[name=alice,gamemode=adventure,team=sr.players]
await entity @a[name=bob,gamemode=adventure,team=sr.players]
dummy alice use entity @e[type=minecraft:interaction,tag=sr.game_launcher,limit=1]
await score $status sr.var matches 1
await entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.blue]
assert entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow]
assert entity @e[type=minecraft:interaction,tag=sr.random]
assert entity @e[type=minecraft:text_display,tag=sr.spectator]
dummy alice use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.blue,limit=1]
await entity @a[name=alice,team=sr.blue]
await chat "joined the Blue Team" alice
assert not score $countdown sr.var matches 0..
dummy bob use entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow,limit=1]
await entity @a[name=bob,team=sr.yellow]
await score $countdown sr.var matches 0..5
await score $status sr.var matches 2
assert entity @e[type=minecraft:shulker,team=sr.blue]
assert entity @e[type=minecraft:shulker,team=sr.yellow]
assert score alice sr.player_id matches 1..
assert score bob sr.player_id matches 1..
await entity @a[name=alice,gamemode=adventure,x=1050,y=240,z=10,dx=14,dy=10,dz=30]
assert result 2 run execute if entity @e[type=minecraft:marker,tag=sr.shop]
assert result 2 run execute if entity @e[type=minecraft:marker,tag=sr.upgrader]
assert result 2 run execute if entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.iron]
assert result 2 run execute if entity @e[type=minecraft:marker,tag=sr.spawner,tag=sr.gold]
assert result 2 run execute if entity @e[type=minecraft:block_display,tag=sr.spawnpoint]
assert items entity alice armor.feet minecraft:leather_boots
assert items entity alice container.* minecraft:wooden_pickaxe
assert score alice sr.kill_count matches 0
await delay 70
# Blocks placed during the match, one of them above the arena.
setblock 1045 242 20 minecraft:oak_planks
execute as alice positioned 1045 242 20 run function sr:event/place_useable
assert entity @e[type=minecraft:marker,tag=sr.useable_blocks]
summon minecraft:marker 1045 320 30 {Tags:["sr.useable_blocks"]}
# alice destroys the yellow shulker, hit after hit.
# Players who just (re)connected are weakened for a few seconds.
effect clear alice minecraft:weakness
dummy alice attack @e[type=minecraft:shulker,team=sr.yellow,limit=1]
await score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 6
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.yellow,limit=1] sr.shulker_health matches 6
await delay 12
dummy alice attack @e[type=minecraft:shulker,team=sr.yellow,limit=1]
await score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 5
await delay 12
dummy alice attack @e[type=minecraft:shulker,team=sr.yellow,limit=1]
await score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 4
await delay 12
dummy alice attack @e[type=minecraft:shulker,team=sr.yellow,limit=1]
await score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 3
await delay 12
dummy alice attack @e[type=minecraft:shulker,team=sr.yellow,limit=1]
await score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 2
await delay 12
dummy alice attack @e[type=minecraft:shulker,team=sr.yellow,limit=1]
await score @e[type=minecraft:shulker,team=sr.yellow,limit=1] sr.shulker_health matches 1
await delay 12
dummy alice attack @e[type=minecraft:shulker,team=sr.yellow,limit=1]
await chat "The Yellow Shulker has been killed"
await not entity @e[type=minecraft:shulker,team=sr.yellow]
assert entity @e[type=minecraft:shulker,team=sr.blue]
kill bob
await chat "Sorry, bob you are eliminated!"
await chat "The Blue Team won the game"
await score $status sr.var matches 0
await entity @a[name=alice,gamemode=adventure,team=sr.players]
await entity @a[name=bob,gamemode=adventure,team=sr.players]
assert not score alice sr.player_id matches 0..
assert entity @e[type=minecraft:interaction,tag=sr.game_launcher]
await not entity @e[type=minecraft:shulker,team=sr.blue]
assert block 1045 242 20 minecraft:air
