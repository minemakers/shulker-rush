$summon minecraft:armor_stand ~ ~ ~ {Small:1b,NoGravity:1b,Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,DisabledSlots:2097151,CustomNameVisible:1b,equipment:{feet:{id:"minecraft:leather_boots",count:1,components:{"minecraft:dyed_color":$(armor)}},legs:{id:"minecraft:leather_leggings",count:1,components:{"minecraft:dyed_color":$(armor)}},chest:{id:"minecraft:leather_chestplate",count:1,components:{"minecraft:dyed_color":$(armor)}},head:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"$(head)"}]}}}}}
$summon minecraft:text_display ~ ~2.025 ~ {text:[{"storage":"sr:lang","nbt":"team_picker.$(name)","interpret":true,"color":"$(color)"}],billboard:"center"}
$summon minecraft:interaction ~ ~ ~ {Tags:$(tags),width:0.7f,height:1.3f}

setblock ~ ~ ~ minecraft:quartz_slab[type=bottom]
setblock ~ ~2 ~ minecraft:barrier

data modify block 0 1 0 front_text.messages[0] set value [{"storage":"sr:lang","nbt":"click_me","interpret":true,"color":"gray"}]
data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] CustomName set from block 0 1 0 front_text.messages[0]

tp @e[type=minecraft:interaction,sort=nearest,limit=1] ~ ~.5 ~ ~ ~
tp @e[type=minecraft:armor_stand,sort=nearest,limit=1] ~ ~.5 ~ ~ ~
