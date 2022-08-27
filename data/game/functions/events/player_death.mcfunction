gamemode spectator @s
function #game:managers/players/loot
execute if entity @s[advancements={game:killed_by_player=false}] run function #game:events/killed_by_self
execute if entity @s[advancements={game:killed_by_player=true}] run function #game:events/killed_by_player

execute if entity @s[team=red] run effect give @e[type=minecraft:shulker,team=red] minecraft:glowing 5 0 true
execute if entity @s[team=blue] run effect give @e[type=minecraft:shulker,team=blue] minecraft:glowing 5 0 true
execute if entity @s[team=green] run effect give @e[type=minecraft:shulker,team=green] minecraft:glowing 5 0 true
execute if entity @s[team=yellow] run effect give @e[type=minecraft:shulker,team=yellow] minecraft:glowing 5 0 true

execute if entity @s[team=red] unless entity @e[type=minecraft:shulker,team=red] run function #game:managers/players/eliminate
execute if entity @s[team=blue] unless entity @e[type=minecraft:shulker,team=blue] run function #game:managers/players/eliminate
execute if entity @s[team=green] unless entity @e[type=minecraft:shulker,team=green] run function #game:managers/players/eliminate
execute if entity @s[team=yellow] unless entity @e[type=minecraft:shulker,team=yellow] run function #game:managers/players/eliminate

scoreboard players operation @s[team=!players] respawnTimer = $timer.respawn config