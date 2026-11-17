title @a times 0 50 10
title @a title [{"storage":"sr:core","nbt":"i18n[0].name","interpret":true,"color":"blue","bold":true}]

execute if data storage sr:lang translator run title @a subtitle [{"storage":"sr:lang","nbt":"translator","interpret":true,"color":"gray"}]
execute unless data storage sr:lang translator run title @a subtitle [{"text":""}]

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1000 .7
