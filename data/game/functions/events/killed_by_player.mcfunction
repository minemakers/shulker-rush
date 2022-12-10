scoreboard players set #source var 0
execute if entity @s[advancements={game:killed_by_player={bit0=true}}] run scoreboard players add #source var 1
execute if entity @s[advancements={game:killed_by_player={bit1=true}}] run scoreboard players add #source var 2
execute if entity @s[advancements={game:killed_by_player={bit2=true}}] run scoreboard players add #source var 4
execute if entity @s[advancements={game:killed_by_player={bit3=true}}] run scoreboard players add #source var 8
execute if entity @s[advancements={game:killed_by_player={bit4=true}}] run scoreboard players add #source var 16
execute if entity @s[advancements={game:killed_by_player={bit5=true}}] run scoreboard players add #source var 32
execute if entity @s[advancements={game:killed_by_player={bit6=true}}] run scoreboard players add #source var 64
advancement revoke @s only game:killed_by_player

tag @s add victim
execute as @a if score @s playerId = #source var run function #game:events/killed_player
tag @s remove victim
