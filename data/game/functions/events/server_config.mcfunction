tellraw @a [{"text":"Warning: ","color":"red","bold":true},{"text":"Command blocks are disabled. Please enable them for the map to work properly!","bold":false}]
execute unless entity @a run schedule function #game:events/server_config 1s
