execute if entity @s[type=minecraft:shulker,team=red] run tellraw @a [{"text":"\n"},{"storage":"game:lang","nbt":"shulker_death.red.message","color":"red","bold":true},{"text":"\n"},{"storage":"game:lang","nbt":"shulker_death.red.warning","color":"gray","italic":true}]
execute if entity @s[type=minecraft:shulker,team=blue] run tellraw @a [{"text":"\n"},{"storage":"game:lang","nbt":"shulker_death.blue.message","color":"dark_aqua","bold":true},{"text":"\n"},{"storage":"game:lang","nbt":"shulker_death.blue.warning","color":"gray","italic":true}]
execute if entity @s[type=minecraft:shulker,team=green] run tellraw @a [{"text":"\n"},{"storage":"game:lang","nbt":"shulker_death.green.message","color":"green","bold":true},{"text":"\n"},{"storage":"game:lang","nbt":"shulker_death.green.warning","color":"gray","italic":true}]
execute if entity @s[type=minecraft:shulker,team=yellow] run tellraw @a [{"text":"\n"},{"storage":"game:lang","nbt":"shulker_death.yellow.message","color":"yellow","bold":true},{"text":"\n"},{"storage":"game:lang","nbt":"shulker_death.yellow.warning","color":"gray","italic":true}]
execute at @s run playsound minecraft:entity.wither.death master @a ~ ~ ~ 1000 2

kill @s[type=minecraft:shulker]
