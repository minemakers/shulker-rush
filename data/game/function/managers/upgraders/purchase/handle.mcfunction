scoreboard players set #error var 0
execute if entity @s[team=red] as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] unless entity @s[tag=red] run scoreboard players set #error var 5
execute if entity @s[team=blue] as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] unless entity @s[tag=blue] run scoreboard players set #error var 5
execute if entity @s[team=green] as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] unless entity @s[tag=green] run scoreboard players set #error var 5
execute if entity @s[team=yellow] as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] unless entity @s[tag=yellow] run scoreboard players set #error var 5

execute if score #error var matches 0 run function game:managers/upgraders/dispatch
execute if score #error var matches 0 run function game:managers/upgraders/purchase/payment
execute if score #error var matches 1.. run function game:managers/upgraders/purchase/errors

item replace block 0 2 0 contents with minecraft:air
data modify block 0 2 0 item set from storage game:core _[0]
item replace entity @s player.cursor from block 0 2 0 contents
