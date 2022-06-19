advancement revoke @s only game:next_lang

scoreboard players add $lang var 1
execute if score $lang var matches 2.. run scoreboard players set $lang var 0

function game:events/reload_lang
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1000 .7