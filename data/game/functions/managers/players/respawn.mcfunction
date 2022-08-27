scoreboard players reset @s respawnTimer

gamemode adventure @s
function #game:managers/players/spawn
effect give @s minecraft:strength 3 0 true
effect give @s minecraft:resistance 4 2 true

loot replace entity @s armor.head loot game:equipments/team_helmet
execute unless predicate game:equiped/min_armor1 run loot replace entity @s armor.feet loot game:equipments/leather_armor