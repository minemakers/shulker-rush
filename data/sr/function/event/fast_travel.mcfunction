gamemode adventure @s
clear @s minecraft:ender_eye
function sr:system/player/spawn
execute at @s at @e[type=minecraft:block_display,tag=sr.spawnpoint,sort=nearest,limit=1] if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:nether_portal
execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 10000 0

schedule function sr:event/fast_travel/done 2t

advancement revoke @s only sr:fast_travel
