scoreboard players set @s souls 0
scoreboard players set @s armorLevel 0
scoreboard players set @s shulkerHealth 7
scoreboard players set @s shulkerLevel 0
scoreboard players set @s spawnerLevel 0
scoreboard players set @s swordLevel 0

data modify block 0 1 0 Text1 set value '{"nbt":"upgrader.name","storage":"game:lang"}'
data modify block ~ ~ ~ CustomName set from block 0 1 0 Text1

summon minecraft:area_effect_cloud ~ ~1 ~ {Tags:["upgrader_name"],Duration:-1,WaitTime:-2147483648,CustomNameVisible:1}
data modify block 0 1 0 Text1 set value '{"nbt":"upgrader.name","storage":"game:lang","color":"red","bold":true}'
data modify entity @e[type=minecraft:area_effect_cloud,tag=upgrader_name,sort=nearest,limit=1] CustomName set from block 0 1 0 Text1

summon minecraft:area_effect_cloud ~ ~.75 ~ {Tags:["upgrader_usage"],Duration:-1,WaitTime:-2147483648,CustomNameVisible:1}
data modify block 0 1 0 Text1 set value '{"nbt":"upgrader.usage","storage":"game:lang","color":"gray","italic":true}'
data modify entity @e[type=minecraft:area_effect_cloud,tag=upgrader_usage,sort=nearest,limit=1] CustomName set from block 0 1 0 Text1

summon minecraft:armor_stand ~ ~.15 ~.18 {ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b}],Pose:{Head:[-90f,0f,0f]},Marker:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Small:1b}

function game:resources/views/game/gui/upgrader