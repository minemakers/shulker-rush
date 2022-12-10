summon minecraft:armor_stand ~ ~ ~ {Tags:["rules"],CustomNameVisible:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,Marker:1b}
data modify entity @e[type=minecraft:armor_stand,sort=nearest,limit=1] CustomName set from block 0 1 0 Text1

execute positioned ~-1 ~-50 ~-1 as @e[type=minecraft:armor_stand,tag=rules,dx=2,dy=100,dz=2] at @s run tp @s ~ ~.15 ~
