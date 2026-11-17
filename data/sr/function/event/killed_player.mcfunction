tellraw @a [{"storage":"sr:lang","nbt":"killed_player[0]","interpret":true,"color":"gray"},{"selector":"@a[tag=sr.victim,sort=nearest,limit=1]"},{"storage":"sr:lang","nbt":"killed_player[1]","interpret":true},{"selector":"@s"},{"storage":"sr:lang","nbt":"killed_player[2]","interpret":true}]

execute store result score #team sr.var run compute entity @s integer sr:team
scoreboard players add @e[type=minecraft:marker,tag=sr.upgrader,predicate=sr:same_team] sr.souls 1
tellraw @a[predicate=sr:same_team] [{"text":"+1 ","color":"aqua"},{"storage":"sr:lang","nbt":"soul","interpret":true}]

schedule function sr:resource/view/game/actionbar 1t
