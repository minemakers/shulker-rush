tag @s add sr.spawner
$tag @s add sr.$(team)
$tag @s add sr.$(resource)

scoreboard players set @s sr.spawner_level 0
execute store result score @s sr.spawner_timer run compute entity @s integer sr:spawner/delay
