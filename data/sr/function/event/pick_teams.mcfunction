scoreboard players set $status sr.var 1

function sr:resource/scene/teams
execute as @a run function sr:system/player/spawn

title @a times 0 50 10
title @a title [{"text":"Shulker Rush II","color":"light_purple"}]
title @a subtitle [{"storage":"sr:lang","nbt":"pick_teams","interpret":true,"color":"gray"}]
tellraw @a [{"storage":"sr:lang","nbt":"rules.prompt.text","interpret":true,"color":"green"},{"text":": "},{"text":"[","color":"gray","extra":[{"storage":"sr:lang","nbt":"rules.prompt.action","interpret":true},{"text":"]"}],"hover_event":{"action":"show_text","value":[{"storage":"sr:lang","nbt":"rules.prompt.hover","interpret":true}]},"click_event":{"action":"run_command","command":"/trigger sr.rules set 1"}}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s

schedule function sr:state/teams/check_players 1t
