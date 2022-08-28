advancement revoke @s only game:next_lang

# Switch language
data modify storage game:lang _lang_list append from storage game:lang _lang_list[0]
data remove storage game:lang _lang_list[0]
data modify storage game:lang _current_lang set from storage game:lang _lang_list[0]

function game:events/reload_lang
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1000 .7