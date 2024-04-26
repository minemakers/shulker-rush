summon minecraft:shulker ~ ~ ~ {Color:14,Team:"red",NoAI:1b,Silent:1b,CustomNameVisible:0b,active_effects:[{id:"minecraft:resistance",amplifier:127,duration:-1,show_particles:0b}]}
scoreboard players operation @e[type=minecraft:shulker,sort=nearest,limit=1] shulker_level = @e[type=minecraft:marker,tag=upgrader,tag=red] shulker_level
scoreboard players operation @e[type=minecraft:shulker,sort=nearest,limit=1] shulker_health = @e[type=minecraft:marker,tag=upgrader,tag=red] shulker_health
function game:resources/prefabs/shulkers/abstract
