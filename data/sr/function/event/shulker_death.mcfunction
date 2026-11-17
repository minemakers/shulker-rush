execute if entity @s[team=sr.red] run tellraw @a [{"text":"\n"},{"storage":"sr:lang","nbt":"shulker_death.red.message","interpret":true,"color":"red","bold":true},{"text":"\n"},{"storage":"sr:lang","nbt":"shulker_death.red.warning","interpret":true,"color":"gray","italic":true}]
execute if entity @s[team=sr.blue] run tellraw @a [{"text":"\n"},{"storage":"sr:lang","nbt":"shulker_death.blue.message","interpret":true,"color":"dark_aqua","bold":true},{"text":"\n"},{"storage":"sr:lang","nbt":"shulker_death.blue.warning","interpret":true,"color":"gray","italic":true}]
execute if entity @s[team=sr.green] run tellraw @a [{"text":"\n"},{"storage":"sr:lang","nbt":"shulker_death.green.message","interpret":true,"color":"green","bold":true},{"text":"\n"},{"storage":"sr:lang","nbt":"shulker_death.green.warning","interpret":true,"color":"gray","italic":true}]
execute if entity @s[team=sr.yellow] run tellraw @a [{"text":"\n"},{"storage":"sr:lang","nbt":"shulker_death.yellow.message","interpret":true,"color":"yellow","bold":true},{"text":"\n"},{"storage":"sr:lang","nbt":"shulker_death.yellow.warning","interpret":true,"color":"gray","italic":true}]
execute at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1000 2

kill @s[type=minecraft:shulker]
