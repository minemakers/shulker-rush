scoreboard players reset @s rules
advancement revoke @s only game:show_rules

scoreboard players enable @s rules
execute unless data storage game:tmp messages.rules.formatted run function game:resources/views/rules/format
tellraw @s [{"text":"\n","color":"gray"},{"storage":"game:tmp","nbt":"messages.rules.formatted","interpret":true},{"text":"\n"}]
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10000 1.7