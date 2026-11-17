scoreboard players reset @s sr.rules
scoreboard players enable @s sr.rules

execute unless data storage sr:lang rules.full run function sr:resource/view/lobby/rules/format
tellraw @s [{"text":"\n","color":"gray"},{"storage":"sr:lang","nbt":"rules.full","interpret":true},{"text":"\n"}]
execute at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 10000 1.7

advancement revoke @s only sr:show_rules
