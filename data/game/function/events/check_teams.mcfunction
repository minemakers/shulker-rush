scoreboard players set #count var 0
execute if entity @a[team=red,scores={player_id=0..}] run scoreboard players add #count var 1
execute if entity @a[team=blue,scores={player_id=0..}] run scoreboard players add #count var 1
execute if entity @a[team=green,scores={player_id=0..}] run scoreboard players add #count var 1
execute if entity @a[team=yellow,scores={player_id=0..}] run scoreboard players add #count var 1

execute if score #count var matches ..1 as @a[scores={player_id=0..}] unless score @s confirm matches 0.. run tellraw @s [{"storage":"game:lang","nbt":"stop.prompt.text","color":"red"},{"text":" [","color":"gold","extra":[{"storage":"game:lang","nbt":"stop.prompt.action"},{"text":"]"}],"hover_event":{"action":"show_text","value":[{"storage":"game:lang","nbt":"stop.prompt.hover"}]},"click_event":{"action":"run_command","command":"/trigger confirm set 1"}}]
execute if score #count var matches ..1 as @a[scores={player_id=0..}] unless score @s confirm matches 0.. run scoreboard players set @a confirm 0
execute if score #count var matches ..1 run scoreboard players enable @a[scores={player_id=0..}] confirm

execute if score $status var matches 2 run schedule function #game:events/check_teams 5s
