title @a times 0 50 10
title @a title [{"storage":"game:core","nbt":"i18n[0].name","color":"blue","bold":true}]

execute if data storage game:lang translator run title @a subtitle [{"storage":"game:lang","nbt":"translator","color":"gray"}]
execute unless data storage game:lang translator run title @a subtitle [{"text":""}]

playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1000 .7
