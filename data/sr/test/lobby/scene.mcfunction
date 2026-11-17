# @environment sr:lobby
# The lobby scene is built: launcher, language picker, arena picker, rule boards.
await loaded 5000 216 0
assert entity @e[type=minecraft:interaction,tag=sr.game_launcher]
assert entity @e[type=minecraft:interaction,tag=sr.lang_picker]
assert entity @e[type=minecraft:item_display,tag=sr.arena_head]
assert entity @e[type=minecraft:text_display,tag=sr.lang.rules.objective]
assert block 5000 214 6 minecraft:dark_oak_wall_sign
assert block 5000 213 0 minecraft:barrier
