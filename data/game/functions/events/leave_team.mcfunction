advancement revoke @s only game:leave_team

clear @s
team join players @s
gamemode adventure @s
function #game:managers/players/spawn
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0