execute store result score #count sr.var if entity @a[gamemode=!spectator]

execute if score #count sr.var matches ..1 run tellraw @a {"storage":"sr:lang","nbt":"errors.ready","interpret":true,"color":"red"}
execute if score #count sr.var matches ..1 at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 100000
execute if score #count sr.var matches 2.. run function sr:event/pick_teams

advancement revoke @s only sr:ready_game
