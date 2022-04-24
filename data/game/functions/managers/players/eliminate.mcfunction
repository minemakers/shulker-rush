tellraw @a [{"storage":"game:lang","nbt":"eliminated[0]","color":"gray"},{"selector":"@s"},{"storage":"game:lang","nbt":"eliminated[1]"}]
execute at @s run playsound minecraft:entity.shulker.ambient master @a ~ ~ ~ 1000 0.3

team join players @s
scoreboard players reset @s playerId
function game:managers/players/spawn

scoreboard players set #count var 0
execute if entity @a[team=red,scores={playerId=0..}] run scoreboard players add #count var 1
execute if entity @a[team=blue,scores={playerId=0..}] run scoreboard players add #count var 1
execute if entity @a[team=green,scores={playerId=0..}] run scoreboard players add #count var 1
execute if entity @a[team=yellow,scores={playerId=0..}] run scoreboard players add #count var 1
execute if score #count var matches ..1 run function game:events/end_game