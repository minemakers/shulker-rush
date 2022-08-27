tellraw @a [{"storage":"game:lang","nbt":"killed_player[0]","color":"gray"},{"selector":"@a[tag=victim,sort=nearest,limit=1]"},{"storage":"game:lang","nbt":"killed_player[1]"},{"selector":"@s"},{"storage":"game:lang","nbt":"killed_player[2]"}]

execute if entity @s[team=red] run scoreboard players add @e[type=minecraft:marker,tag=upgrader,tag=red] souls 1
execute if entity @s[team=blue] run scoreboard players add @e[type=minecraft:marker,tag=upgrader,tag=blue] souls 1
execute if entity @s[team=green] run scoreboard players add @e[type=minecraft:marker,tag=upgrader,tag=green] souls 1
execute if entity @s[team=yellow] run scoreboard players add @e[type=minecraft:marker,tag=upgrader,tag=yellow] souls 1

execute if entity @s[team=red] run tellraw @a[team=red] [{"text":"+1 ","color":"aqua"},{"storage":"game:lang","nbt":"soul"}]
execute if entity @s[team=blue] run tellraw @a[team=blue] [{"text":"+1 ","color":"aqua"},{"storage":"game:lang","nbt":"soul"}]
execute if entity @s[team=green] run tellraw @a[team=green] [{"text":"+1 ","color":"aqua"},{"storage":"game:lang","nbt":"soul"}]
execute if entity @s[team=yellow] run tellraw @a[team=yellow] [{"text":"+1 ","color":"aqua"},{"storage":"game:lang","nbt":"soul"}]

schedule function #game:resources/views/screen/actionbar 1t