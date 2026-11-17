title @a times 20 100 20

execute if entity @a[team=sr.red,scores={sr.player_id=1..},limit=1] run title @a title [{"storage":"sr:lang","nbt":"win.red.title","interpret":true,"color":"red"}]
execute if entity @a[team=sr.blue,scores={sr.player_id=1..},limit=1] run title @a title [{"storage":"sr:lang","nbt":"win.blue.title","interpret":true,"color":"dark_aqua"}]
execute if entity @a[team=sr.green,scores={sr.player_id=1..},limit=1] run title @a title [{"storage":"sr:lang","nbt":"win.green.title","interpret":true,"color":"green"}]
execute if entity @a[team=sr.yellow,scores={sr.player_id=1..},limit=1] run title @a title [{"storage":"sr:lang","nbt":"win.yellow.title","interpret":true,"color":"yellow"}]

execute if entity @a[team=sr.red,scores={sr.player_id=1..},limit=1] run title @a subtitle [{"storage":"sr:lang","nbt":"win.red.subtitle","interpret":true,"color":"gray"}]
execute if entity @a[team=sr.blue,scores={sr.player_id=1..},limit=1] run title @a subtitle [{"storage":"sr:lang","nbt":"win.blue.subtitle","interpret":true,"color":"gray"}]
execute if entity @a[team=sr.green,scores={sr.player_id=1..},limit=1] run title @a subtitle [{"storage":"sr:lang","nbt":"win.green.subtitle","interpret":true,"color":"gray"}]
execute if entity @a[team=sr.yellow,scores={sr.player_id=1..},limit=1] run title @a subtitle [{"storage":"sr:lang","nbt":"win.yellow.subtitle","interpret":true,"color":"gray"}]

execute if entity @a[team=sr.red,scores={sr.player_id=1..},limit=1] run tellraw @a [{"text":"\n"},{"storage":"sr:lang","nbt":"win.red.message","interpret":true,"color":"red","bold":true}]
execute if entity @a[team=sr.blue,scores={sr.player_id=1..},limit=1] run tellraw @a [{"text":"\n"},{"storage":"sr:lang","nbt":"win.blue.message","interpret":true,"color":"dark_aqua","bold":true}]
execute if entity @a[team=sr.green,scores={sr.player_id=1..},limit=1] run tellraw @a [{"text":"\n"},{"storage":"sr:lang","nbt":"win.green.message","interpret":true,"color":"green","bold":true}]
execute if entity @a[team=sr.yellow,scores={sr.player_id=1..},limit=1] run tellraw @a [{"text":"\n"},{"storage":"sr:lang","nbt":"win.yellow.message","interpret":true,"color":"yellow","bold":true}]

execute as @a[scores={sr.kill_count=0..}] run tellraw @s [{"text":"▶ ","color":"gray"},{"storage":"sr:lang","nbt":"stats.kill[0]","interpret":true},{"score":{"name":"@s","objective":"sr.kill_count"},"color":"gold"},{"storage":"sr:lang","nbt":"stats.kill[1]","interpret":true}]
execute as @a[scores={sr.death_count=0..}] run tellraw @s [{"text":"▶ ","color":"gray"},{"storage":"sr:lang","nbt":"stats.death[0]","interpret":true},{"score":{"name":"@s","objective":"sr.death_count"},"color":"gold"},{"storage":"sr:lang","nbt":"stats.death[1]","interpret":true},{"text":"\n"}]

playsound minecraft:entity.wither.death master @s 5000 216 0 1000000

function sr:event/stop_game
