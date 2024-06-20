gamemode adventure @s
clear @s minecraft:ender_eye
function game:managers/players/spawn
execute at @s at @e[type=minecraft:area_effect_cloud,tag=spawnpoint,sort=nearest,limit=1] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:nether_portal
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 10000 0

schedule function game:managers/merchants/restock 2t
