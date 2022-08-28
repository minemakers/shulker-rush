title @a times 20 100 20

execute if entity @a[team=red,scores={playerId=1..},limit=1] run title @a title [{"storage":"game:lang","nbt":"win.red.title","color":"red"}]
execute if entity @a[team=blue,scores={playerId=1..},limit=1] run title @a title [{"storage":"game:lang","nbt":"win.blue.title","color":"dark_aqua"}]
execute if entity @a[team=green,scores={playerId=1..},limit=1] run title @a title [{"storage":"game:lang","nbt":"win.green.title","color":"green"}]
execute if entity @a[team=yellow,scores={playerId=1..},limit=1] run title @a title [{"storage":"game:lang","nbt":"win.yellow.title","color":"yellow"}]

execute if entity @a[team=red,scores={playerId=1..},limit=1] run title @a subtitle [{"storage":"game:lang","nbt":"win.red.subtitle","color":"gray"}]
execute if entity @a[team=blue,scores={playerId=1..},limit=1] run title @a subtitle [{"storage":"game:lang","nbt":"win.blue.subtitle","color":"gray"}]
execute if entity @a[team=green,scores={playerId=1..},limit=1] run title @a subtitle [{"storage":"game:lang","nbt":"win.green.subtitle","color":"gray"}]
execute if entity @a[team=yellow,scores={playerId=1..},limit=1] run title @a subtitle [{"storage":"game:lang","nbt":"win.yellow.subtitle","color":"gray"}]

execute if entity @a[team=red,scores={playerId=1..},limit=1] run tellraw @a [{"text":"\n"},{"storage":"game:lang","nbt":"win.red.message","color":"red","bold":true}]
execute if entity @a[team=blue,scores={playerId=1..},limit=1] run tellraw @a [{"text":"\n"},{"storage":"game:lang","nbt":"win.blue.message","color":"dark_aqua","bold":true}]
execute if entity @a[team=green,scores={playerId=1..},limit=1] run tellraw @a [{"text":"\n"},{"storage":"game:lang","nbt":"win.green.message","color":"green","bold":true}]
execute if entity @a[team=yellow,scores={playerId=1..},limit=1] run tellraw @a [{"text":"\n"},{"storage":"game:lang","nbt":"win.yellow.message","color":"yellow","bold":true}]

execute as @a[scores={killCount=0..}] run tellraw @s [{"text":"▶ ","color":"gray"},{"storage":"game:lang","nbt":"stats.kill[0]"},{"score":{"name":"@s","objective":"killCount"},"color":"gold"},{"storage":"game:lang","nbt":"stats.kill[1]"}]
execute as @a[scores={deathCount=0..}] run tellraw @s [{"text":"▶ ","color":"gray"},{"storage":"game:lang","nbt":"stats.death[0]"},{"score":{"name":"@s","objective":"deathCount"},"color":"gold"},{"storage":"game:lang","nbt":"stats.death[1]"},{"text":"\n"}]

playsound minecraft:entity.wither.death master @s 5000 216 0 1000000

function game:events/stop_game