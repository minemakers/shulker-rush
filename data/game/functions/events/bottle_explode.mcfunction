kill @s[type=minecraft:area_effect_cloud]

particle minecraft:cloud ~ ~ ~ .7 .7 .7 .2 50 normal
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.8

execute as @a[distance=3..4] run damage @s 3
execute as @a[distance=2..3] run damage @s 7
execute as @a[distance=1..2] run damage @s 10
execute as @a[distance=0..1] run damage @s 12

fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air replace #game:glass
fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace oak_planks
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace end_stone
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace ancient_debris
