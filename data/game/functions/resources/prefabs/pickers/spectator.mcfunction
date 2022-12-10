summon minecraft:area_effect_cloud ~ ~1.2 ~ {Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b,Tags:["spectator"]}
data modify block 0 1 0 Text1 set value '[{"storage":"game:lang","nbt":"team_picker.spectator","color":"light_purple"}]'
execute positioned ~ ~1.2 ~ run data modify entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1] CustomName set from block 0 1 0 Text1
