execute store result score #count var if entity @a[gamemode=!spectator]

execute if score #count var matches ..1 run tellraw @a {"storage":"game:lang","nbt":"errors.ready","color":"red"}
execute if score #count var matches ..1 at @s run playsound minecraft:entity.item.break master @s ~ ~ ~ 100000
execute if score #count var matches 2.. run function #game:events/pick_teams
