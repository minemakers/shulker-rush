execute if entity @s[advancements={sr:hurt_shulker={red=true}},team=!sr.red] as @e[type=minecraft:shulker,team=sr.red,sort=nearest,limit=1] run function sr:system/shulker/damage
execute if entity @s[advancements={sr:hurt_shulker={blue=true}},team=!sr.blue] as @e[type=minecraft:shulker,team=sr.blue,sort=nearest,limit=1] run function sr:system/shulker/damage
execute if entity @s[advancements={sr:hurt_shulker={green=true}},team=!sr.green] as @e[type=minecraft:shulker,team=sr.green,sort=nearest,limit=1] run function sr:system/shulker/damage
execute if entity @s[advancements={sr:hurt_shulker={yellow=true}},team=!sr.yellow] as @e[type=minecraft:shulker,team=sr.yellow,sort=nearest,limit=1] run function sr:system/shulker/damage

execute as @e[type=minecraft:shulker,scores={sr.shulker_health=..0}] run function sr:event/shulker_death

advancement revoke @s only sr:hurt_shulker
