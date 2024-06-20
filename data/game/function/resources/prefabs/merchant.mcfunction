summon minecraft:villager ~ ~ ~ {VillagerData:{type:"minecraft:snow",profession:"minecraft:toolsmith",level:99},Invulnerable:1b,NoAI:1b,Silent:1b,CanPickUpLoot:0b,PersistenceRequired:1b}
execute as @e[type=minecraft:villager,sort=nearest,limit=1] run data modify entity @s Offers.Recipes set from storage game:core trades

data modify block 0 1 0 front_text.messages[0] set value '[{"storage":"game:lang","nbt":"merchant","color":"dark_purple"}]'
data modify entity @e[type=minecraft:villager,sort=nearest,limit=1] CustomName set from block 0 1 0 front_text.messages[0]

tp @e[type=minecraft:villager,sort=nearest,limit=1] ~ ~ ~ ~ ~
