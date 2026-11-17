# @dummy
# @environment sr:unit
# @max_ticks 60
# A menu item that sells nothing (a filler) is not a purchase.
await entity @s[gamemode=adventure]
item replace entity @s player.cursor with minecraft:black_stained_glass_pane[minecraft:custom_data={upgrade_id:{}}]
scoreboard players set #error sr.var 0
function sr:system/upgrader/dispatch
assert score #error sr.var matches -1
clear @s
