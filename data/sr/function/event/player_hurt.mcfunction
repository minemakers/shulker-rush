execute at @s run particle block{block_state:"redstone_block"} ~ ~.6 ~ .15 .3 .15 0 15 normal @a
execute if score @s sr.dead matches 1.. run function sr:event/player_death

advancement revoke @s only sr:player_hurt
