clear @s
team join sr.players @s
gamemode adventure @s
function sr:system/player/spawn
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0

advancement revoke @s only sr:leave_team
