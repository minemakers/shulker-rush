scoreboard players reset @s rules
scoreboard players enable @s rules

execute unless data storage game:lang rules.full run function game:resources/views/rules/format
tellraw @s [{"text":"\n","color":"gray"},{"storage":"game:lang","nbt":"rules.full","interpret":true},{"text":"\n"}]
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10000 1.7
