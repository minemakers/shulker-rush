execute store result score #team sr.var run compute entity @s integer sr:team
# A team that has not used its chest yet has nothing to copy: without this, the comparison would keep the content
# of whichever team was checked before.
data modify storage sr:core chests.check set value []
data modify storage sr:core chests.check set from entity @e[type=minecraft:marker,tag=sr.upgrader,predicate=sr:same_team,limit=1] data.chest
execute store success score #success sr.var run data modify storage sr:core chests.check set from entity @s EnderItems
execute if score #success sr.var matches 1 run function sr:system/chest/check/lock

execute if entity @s[advancements={sr:check_inventory={changed=true}}] run function sr:system/player/inventory/save
execute if score @s sr.drop matches 1.. run function sr:system/player/inventory/save
