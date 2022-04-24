execute if score $countdown var matches 1.. run scoreboard players remove $countdown var 1
execute unless score $countdown var matches 0.. run scoreboard players set $countdown var 5

scoreboard players set #count var 0
execute if entity @a[team=red,gamemode=!spectator] run scoreboard players add #count var 1
execute if entity @a[team=blue,gamemode=!spectator] run scoreboard players add #count var 1
execute if entity @a[team=green,gamemode=!spectator] run scoreboard players add #count var 1
execute if entity @a[team=yellow,gamemode=!spectator] run scoreboard players add #count var 1

execute if score #count var matches ..1 run scoreboard players reset $countdown var
execute if entity @a[team=players,gamemode=!spectator] run scoreboard players reset $countdown var

execute if score $countdown var matches 0 run function game:events/start_game
execute if score $countdown var matches 0.. run function game:resources/views/screen/countdown
execute if score $countdown var matches 1.. run schedule function game:events/countdown 1s