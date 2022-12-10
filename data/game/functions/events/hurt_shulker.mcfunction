execute if entity @s[advancements={game:hurt_shulker={red=true}},team=!red] as @e[type=minecraft:shulker,team=red,sort=nearest,limit=1] run function game:managers/shulkers/damage
execute if entity @s[advancements={game:hurt_shulker={blue=true}},team=!blue] as @e[type=minecraft:shulker,team=blue,sort=nearest,limit=1] run function game:managers/shulkers/damage
execute if entity @s[advancements={game:hurt_shulker={green=true}},team=!green] as @e[type=minecraft:shulker,team=green,sort=nearest,limit=1] run function game:managers/shulkers/damage
execute if entity @s[advancements={game:hurt_shulker={yellow=true}},team=!yellow] as @e[type=minecraft:shulker,team=yellow,sort=nearest,limit=1] run function game:managers/shulkers/damage
