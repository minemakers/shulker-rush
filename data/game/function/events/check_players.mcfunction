execute store result score #count var if entity @a

execute if score #count var matches ..1 as @a unless score @s confirm matches 0.. run tellraw @s [{"storage":"game:lang","nbt":"stop.prompt.text","color":"red"},{"text":" [","color":"gold","extra":[{"storage":"game:lang","nbt":"stop.prompt.action"},{"text":"]"}],"hover_event":{"action":"show_text","value":[{"storage":"game:lang","nbt":"stop.prompt.hover"}]},"click_event":{"action":"run_command","command":"/trigger confirm set 1"}}]
execute if score #count var matches ..1 as @a unless score @s confirm matches 0.. run scoreboard players set @a confirm 0
execute if score #count var matches ..1 run scoreboard players enable @a confirm

execute if score $status var matches 1 run schedule function #game:events/check_players 5s
