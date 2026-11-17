scoreboard players set #count sr.var 0
execute if entity @a[team=sr.red,scores={sr.player_id=0..}] run scoreboard players add #count sr.var 1
execute if entity @a[team=sr.blue,scores={sr.player_id=0..}] run scoreboard players add #count sr.var 1
execute if entity @a[team=sr.green,scores={sr.player_id=0..}] run scoreboard players add #count sr.var 1
execute if entity @a[team=sr.yellow,scores={sr.player_id=0..}] run scoreboard players add #count sr.var 1

execute if score #count sr.var matches ..1 as @a[scores={sr.player_id=0..}] unless score @s sr.confirm matches 0.. run tellraw @s [{"storage":"sr:lang","nbt":"stop.prompt.text","interpret":true,"color":"red"},{"text":" [","color":"gold","extra":[{"storage":"sr:lang","nbt":"stop.prompt.action","interpret":true},{"text":"]"}],"hover_event":{"action":"show_text","value":[{"storage":"sr:lang","nbt":"stop.prompt.hover","interpret":true}]},"click_event":{"action":"run_command","command":"/trigger sr.confirm set 1"}}]
execute if score #count sr.var matches ..1 as @a[scores={sr.player_id=0..}] unless score @s sr.confirm matches 0.. run scoreboard players set @a sr.confirm 0
execute if score #count sr.var matches ..1 run scoreboard players enable @a[scores={sr.player_id=0..}] sr.confirm

execute if score $status sr.var matches 2 run schedule function sr:state/game/check_teams 5s
