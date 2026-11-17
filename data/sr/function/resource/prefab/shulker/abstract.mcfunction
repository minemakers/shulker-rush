$data merge entity @s {Color:$(color)b,NoAI:1b,Silent:1b,CustomNameVisible:0b,active_effects:[{id:"minecraft:resistance",amplifier:127,duration:-1,show_particles:0b}]}
$team join sr.$(team) @s

$scoreboard players operation @s sr.shulker_level = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.$(team)] sr.shulker_level
$scoreboard players operation @s sr.shulker_health = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.$(team)] sr.shulker_health
function sr:resource/view/game/shulker
