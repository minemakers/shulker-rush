execute if score @s spawnerLevel matches 3 run scoreboard players set #error var 2
execute if score @s spawnerLevel matches 2 run scoreboard players operation #cost.souls var = $cost.improved_spawner.3 config
execute if score @s spawnerLevel matches 1 run scoreboard players operation #cost.souls var = $cost.improved_spawner.2 config
execute if score @s spawnerLevel matches 0 run scoreboard players operation #cost.souls var = $cost.improved_spawner.1 config

execute if score #error var matches 0 run function #game:managers/upgraders/purchase/validate
execute if score #error var matches 0 run function #game:managers/upgraders/actions/upgrade_spawner