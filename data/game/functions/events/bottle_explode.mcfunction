kill @s[type=minecraft:area_effect_cloud]

particle minecraft:cloud ~ ~ ~ .7 .7 .7 .2 50 normal
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
playsound minecraft:entity.generic.explode master @a ~ ~ ~ 1 0.8

effect give @a[distance=0..2] minecraft:absorption 1 0 true
effect give @a[distance=0..2] minecraft:instant_damage 1 1 true
effect give @a[distance=2..3] minecraft:absorption 1 1 true
effect give @a[distance=2..3] minecraft:instant_damage 1 1 true
effect give @a[distance=3..4] minecraft:absorption 1 0 true
effect give @a[distance=3..4] minecraft:instant_damage 1 0 true

fill ~3 ~3 ~3 ~-3 ~-3 ~-3 air replace #game:glass
fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace oak_planks
fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace end_stone
fill ~1 ~ ~ ~-1 ~ ~ air replace ancient_debris
fill ~ ~ ~1 ~ ~ ~-1 air replace ancient_debris
fill ~ ~1 ~ ~ ~-1 ~ air replace ancient_debris