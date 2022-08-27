summon minecraft:shulker ~ ~ ~ {Color:14,Team:"red",NoAI:1b,Silent:1b,CustomNameVisible:0b,ActiveEffects:[{Id:6,Amplifier:10,Duration:1000000,ShowParticles:0b,Ambient:1b}],Health:10000}
scoreboard players operation @e[type=minecraft:shulker,sort=nearest,limit=1] shulkerLevel = @e[type=minecraft:marker,tag=upgrader,tag=red] shulkerLevel
scoreboard players operation @e[type=minecraft:shulker,sort=nearest,limit=1] shulkerHealth = @e[type=minecraft:marker,tag=upgrader,tag=red] shulkerHealth
function #game:resources/prefabs/shulkers/abstract