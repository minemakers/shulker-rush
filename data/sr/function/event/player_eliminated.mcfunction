tellraw @a [{"storage":"sr:lang","nbt":"eliminated[0]","interpret":true,"color":"gray"},{"selector":"@s"},{"storage":"sr:lang","nbt":"eliminated[1]","interpret":true}]
execute at @s run playsound minecraft:entity.shulker.ambient master @a ~ ~ ~ 1000 0.3

team join sr.players @s
scoreboard players reset @s sr.player_id
function sr:system/player/spawn

scoreboard players set #count sr.var 0
execute if entity @a[team=sr.red,scores={sr.player_id=0..}] run scoreboard players add #count sr.var 1
execute if entity @a[team=sr.blue,scores={sr.player_id=0..}] run scoreboard players add #count sr.var 1
execute if entity @a[team=sr.green,scores={sr.player_id=0..}] run scoreboard players add #count sr.var 1
execute if entity @a[team=sr.yellow,scores={sr.player_id=0..}] run scoreboard players add #count sr.var 1
execute if score #count sr.var matches ..1 run function sr:event/end_game
