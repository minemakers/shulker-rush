# Runs as an upgraded shulker: it heals its team, then slows down and reveals the others at higher levels.
execute store result score #team sr.var run compute entity @s integer sr:team
effect give @a[predicate=sr:same_team,distance=..11] minecraft:regeneration 1 0 true
execute if score @s sr.shulker_level matches 2.. run effect give @a[predicate=!sr:same_team,distance=..7] minecraft:mining_fatigue 1 0 true
execute if score @s sr.shulker_level matches 3.. run effect give @a[predicate=!sr:same_team,distance=..15] minecraft:glowing 1 0 true
