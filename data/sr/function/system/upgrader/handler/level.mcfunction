$execute store result score #cost.souls sr.var run compute entity @s integer sr:upgrader/cost/$(id)
execute if score #cost.souls sr.var matches ..-1 run scoreboard players set #error sr.var 2

execute if score #error sr.var matches 0 run function sr:system/upgrader/purchase/validate
$execute if score #error sr.var matches 0 run function sr:system/upgrader/action/$(action)
