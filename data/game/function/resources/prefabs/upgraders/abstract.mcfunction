scoreboard players set @s souls 0
scoreboard players set @s armor_level 0
scoreboard players set @s shulker_health 7
scoreboard players set @s shulker_level 0
scoreboard players set @s spawner_level 0
scoreboard players set @s sword_level 0

data modify block 0 1 0 front_text.messages[0] set value '{"nbt":"upgrader.name","storage":"game:lang"}'
data modify block ~ ~ ~ CustomName set from block 0 1 0 front_text.messages[0]

execute at @s run summon minecraft:text_display ~ ~1.9 ~ {Tags:["shop_display"],text:'{"nbt":"upgrader.name","storage":"game:lang","color":"red","bold":true}',billboard:"center"}
execute at @s run summon minecraft:text_display ~ ~1.6 ~ {Tags:["shop_display"],text:'{"nbt":"upgrader.usage","storage":"game:lang","color":"gray","italic":true}',billboard:"center"}
execute at @s run summon minecraft:block_display ~-.3 ~.65 ~-.3 {Tags:["shop_display"],block_state:{Name:"minecraft:command_block",Properties:{facing:"up"}},transformation:{scale:[0.6f,0.6f,0.6f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}

function game:resources/views/game/gui/upgrader
