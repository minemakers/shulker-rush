setblock ~ ~2 ~ minecraft:barrier
setblock ~ ~ ~ minecraft:quartz_slab[type=bottom]

summon minecraft:area_effect_cloud ~ ~1.22 ~ {Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b}
execute positioned ~ ~1.22 ~ run data modify entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] CustomName set from block 0 1 0 Text1
data modify block 0 1 0 Text1 set value '[{"storage":"game:lang","nbt":"click_me","color":"gray"}]'
data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] CustomName set from block 0 1 0 Text1

tp @e[type=minecraft:villager,sort=nearest,limit=1] ~ ~.5 ~ ~ ~
tp @e[type=minecraft:armor_stand,sort=nearest,limit=1] ~ ~.5 ~ ~ ~
