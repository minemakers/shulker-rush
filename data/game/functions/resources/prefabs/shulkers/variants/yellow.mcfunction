summon minecraft:shulker ~ ~ ~ {Color:4,Team:"yellow",NoAI:1b,Silent:1b,CustomNameVisible:0b,ActiveEffects:[{Id:6,Amplifier:10,Duration:1000000,ShowParticles:0b,Ambient:1b}],Health:10000}
scoreboard players operation @e[type=minecraft:shulker,sort=nearest,limit=1] shulkerLevel = @e[type=minecraft:marker,tag=upgrader,tag=yellow] shulkerLevel
scoreboard players operation @e[type=minecraft:shulker,sort=nearest,limit=1] shulkerHealth = @e[type=minecraft:marker,tag=upgrader,tag=yellow] shulkerHealth
function game:resources/prefabs/shulkers/abstract