tag @s add sr.upgrader
$tag @s add sr.$(team)

scoreboard players set @s sr.souls 0
scoreboard players set @s sr.armor_level 0
scoreboard players set @s sr.shulker_health 7
scoreboard players set @s sr.shulker_level 0
scoreboard players set @s sr.spawner_level 0
scoreboard players set @s sr.sword_level 0

data modify block 0 1 0 front_text.messages[0] set value {"nbt":"upgrader.name","interpret":true,"storage":"sr:lang"}
data modify block ~ ~ ~ CustomName set from block 0 1 0 front_text.messages[0]

execute at @s run summon minecraft:text_display ~ ~1.9 ~ {Tags:["sr.shop_display"],text:{"nbt":"upgrader.name","interpret":true,"storage":"sr:lang","color":"red","bold":true},billboard:"center"}
execute at @s run summon minecraft:text_display ~ ~1.6 ~ {Tags:["sr.shop_display"],text:{"nbt":"upgrader.usage","interpret":true,"storage":"sr:lang","color":"gray","italic":true},billboard:"center"}
execute at @s run summon minecraft:block_display ~-.3 ~.65 ~-.3 {Tags:["sr.shop_display"],block_state:{id:"minecraft:command_block",properties:{facing:"up"}},transformation:{scale:[0.6f,0.6f,0.6f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}

function sr:resource/view/game/gui/upgrader
