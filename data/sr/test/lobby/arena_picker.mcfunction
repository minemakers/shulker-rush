# @environment sr:lobby
# @max_ticks 60
# The arena sign cycles through the three arenas.
await loaded 5000 216 0
scoreboard players set $arena sr.var 1
dummy picker spawn
await entity @a[name=picker,gamemode=adventure]
execute as picker at @s run function sr:event/next_arena
assert score $arena sr.var matches 3
assert data entity @e[type=minecraft:item_display,tag=sr.arena_head,limit=1] item.components."minecraft:profile"
execute as picker at @s run function sr:event/next_arena
assert score $arena sr.var matches 2
execute as picker at @s run function sr:event/next_arena
assert score $arena sr.var matches 1
dummy picker leave
