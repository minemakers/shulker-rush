scoreboard players set $status var 1

function #game:resources/scenes/teams
execute as @a run function game:managers/players/spawn

title @a times 0 50 10
title @a title [{"text":"Shulker Rush II","color":"light_purple"}]
title @a subtitle [{"storage":"game:lang","nbt":"pick_teams","color":"gray"}]
tellraw @a [{"storage":"game:lang","nbt":"rules.prompt.text","color":"green"},{"text":": "},{"text":"[","color":"gray","extra":[{"storage":"game:lang","nbt":"rules.prompt.action"},{"text":"]"}],"hover_event":{"action":"show_text","value":[{"storage":"game:lang","nbt":"rules.prompt.hover"}]},"click_event":{"action":"run_command","command":"/trigger rules set 1"}}]
execute as @a at @s run playsound minecraft:entity.player.levelup master @s

schedule function #game:events/check_players 1t
