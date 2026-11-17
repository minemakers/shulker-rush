gamemode adventure @s
function sr:system/player/spawn
effect give @s minecraft:strength 3 0 true
effect give @s minecraft:resistance 4 2 true
scoreboard players reset @s sr.respawn_timer

loot replace entity @s armor.head loot sr:equipment/team_helmet
execute unless predicate sr:equipped/min_armor1 run loot replace entity @s armor.feet loot sr:equipment/leather_armor

execute store result score #count sr.var run clear @s minecraft:wooden_pickaxe 0
execute if score #count sr.var matches 0 run loot give @s loot sr:equipment/wooden_pickaxe
