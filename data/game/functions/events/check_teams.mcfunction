scoreboard players set #count var 0
execute if entity @a[team=red,scores={playerId=0..}] run scoreboard players add #count var 1
execute if entity @a[team=blue,scores={playerId=0..}] run scoreboard players add #count var 1
execute if entity @a[team=green,scores={playerId=0..}] run scoreboard players add #count var 1
execute if entity @a[team=yellow,scores={playerId=0..}] run scoreboard players add #count var 1

execute if score #count var matches ..1 as @a[scores={playerId=0..}] unless score @s confirm matches 0.. run tellraw @s [{"storage":"game:lang","nbt":"stop.prompt.text","color":"red"},{"text":" [","color":"gold","extra":[{"storage":"game:lang","nbt":"stop.prompt.action"},{"text":"]"}],"hoverEvent":{"action":"show_text","contents":[{"storage":"game:lang","nbt":"stop.prompt.hover"}]},"clickEvent":{"action":"run_command","value":"/trigger confirm set 1"}}]
execute if score #count var matches ..1 as @a[scores={playerId=0..}] unless score @s confirm matches 0.. run scoreboard players set @a confirm 0
execute if score #count var matches ..1 run scoreboard players enable @a[scores={playerId=0..}] confirm

schedule function #game:events/check_teams 5s