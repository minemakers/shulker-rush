tag @s remove sr.lock
execute store result score #team sr.var run compute entity @s integer sr:team
data modify entity @e[type=minecraft:marker,tag=sr.upgrader,predicate=sr:same_team,limit=1] data.chest set from entity @s EnderItems
item replace entity @a[predicate=sr:same_team] enderchest.* from entity @s enderchest.*
function sr:system/player/inventory/save
