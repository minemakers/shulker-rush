gamemode adventure @s
function game:managers/players/spawn
effect give @s minecraft:strength 3 0 true
effect give @s minecraft:resistance 4 2 true

loot replace entity @s armor.head loot game:equipments/team_helmet
execute unless predicate game:equiped/min_armor1 run loot replace entity @s armor.feet loot game:equipments/leather_armor

execute store result score #count var run clear @s minecraft:wooden_pickaxe 0
execute if score #count var matches 0 run loot give @s loot game:equipments/wooden_pickaxe
