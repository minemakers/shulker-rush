execute store result score #count sr.var if entity @a

execute if score #count sr.var matches ..1 as @a unless score @s sr.confirm matches 0.. run tellraw @s [{"storage":"sr:lang","nbt":"stop.prompt.text","interpret":true,"color":"red"},{"text":" [","color":"gold","extra":[{"storage":"sr:lang","nbt":"stop.prompt.action","interpret":true},{"text":"]"}],"hover_event":{"action":"show_text","value":[{"storage":"sr:lang","nbt":"stop.prompt.hover","interpret":true}]},"click_event":{"action":"run_command","command":"/trigger sr.confirm set 1"}}]
execute if score #count sr.var matches ..1 as @a unless score @s sr.confirm matches 0.. run scoreboard players set @a sr.confirm 0
execute if score #count sr.var matches ..1 run scoreboard players enable @a sr.confirm

execute if score $status sr.var matches 1 run schedule function sr:state/teams/check_players 5s
