execute if score $countdown sr.var matches 1.. run scoreboard players remove $countdown sr.var 1
execute unless score $countdown sr.var matches 0.. run scoreboard players set $countdown sr.var 5

scoreboard players set #count sr.var 0
execute if entity @a[team=sr.red,gamemode=!spectator] run scoreboard players add #count sr.var 1
execute if entity @a[team=sr.blue,gamemode=!spectator] run scoreboard players add #count sr.var 1
execute if entity @a[team=sr.green,gamemode=!spectator] run scoreboard players add #count sr.var 1
execute if entity @a[team=sr.yellow,gamemode=!spectator] run scoreboard players add #count sr.var 1

execute if score #count sr.var matches ..1 run scoreboard players reset $countdown sr.var
execute if entity @a[team=sr.players,gamemode=!spectator] run scoreboard players reset $countdown sr.var

execute if score $countdown sr.var matches 0 run function sr:event/start_game
execute if score $countdown sr.var matches 0.. run function sr:resource/view/teams/countdown
execute if score $countdown sr.var matches 1.. run schedule function sr:state/teams/countdown 1s
