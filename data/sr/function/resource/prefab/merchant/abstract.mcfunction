data merge entity @s {VillagerData:{type:"minecraft:snow",profession:"minecraft:toolsmith",level:99},Invulnerable:1b,NoAI:1b,Silent:1b,CanPickUpLoot:0b,PersistenceRequired:1b}
data modify entity @s Offers.Recipes set from storage sr:core trades

data modify block 0 1 0 front_text.messages[0] set value [{"storage":"sr:lang","nbt":"merchant","interpret":true,"color":"dark_purple"}]
data modify entity @s CustomName set from block 0 1 0 front_text.messages[0]

tp @s ~ ~ ~ ~ ~
