scoreboard players set #error var 0
scoreboard players set #handler var 0

execute store success score #success var run clear @s #game:all{upgradeId:{b0:1b}} 0
execute if score #success var matches 1 run scoreboard players add #handler var 1
execute store success score #success var run clear @s #game:all{upgradeId:{b1:1b}} 0
execute if score #success var matches 1 run scoreboard players add #handler var 2
execute store success score #success var run clear @s #game:all{upgradeId:{b2:1b}} 0
execute if score #success var matches 1 run scoreboard players add #handler var 4

execute if score #handler var matches 0 run scoreboard players set #error var -1
execute if score #handler var matches 1 as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] run function game:managers/upgraders/handlers/shulker_health
execute if score #handler var matches 2 as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] run function game:managers/upgraders/handlers/enhanced_shulker
execute if score #handler var matches 3 as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] run function game:managers/upgraders/handlers/sharpened_sword
execute if score #handler var matches 4 as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] run function game:managers/upgraders/handlers/reinforced_armor
execute if score #handler var matches 5 as @e[type=minecraft:marker,tag=upgrader,sort=nearest,limit=1] run function game:managers/upgraders/handlers/improved_spawner