execute if block ~ ~ ~ #game:shop[facing=west] run tp @s ~ ~ ~ -90 0
execute if block ~ ~ ~ #game:shop[facing=east] run tp @s ~ ~ ~ 90 0
execute if block ~ ~ ~ #game:shop[facing=north] run tp @s ~ ~ ~ 0 0
execute if block ~ ~ ~ #game:shop[facing=south] run tp @s ~ ~ ~ 180 0

data modify block 0 1 0 Text1 set value '{"nbt":"shop.name","storage":"game:lang"}'
data modify block ~ ~ ~ CustomName set from block 0 1 0 Text1

execute at @s run summon minecraft:area_effect_cloud ^ ^.4 ^.8 {Tags:["shop_name"],Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b}
execute at @s run summon minecraft:area_effect_cloud ^ ^.2 ^.8 {Tags:["shop_usage"],Duration:-1,WaitTime:-2147483648,CustomNameVisible:1b}
execute at @s run summon minecraft:armor_stand ^ ^-.45 ^.35 {HasVisualFire:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;-2076843989,-590066462,-1715884237,465001183],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODkyNmMxZjJjM2MxNGQwODZjNDBjZmMyMzVmZTkzODY5NGY0YTUxMDY3YWRhNDcyNmI0ODZlYTFjODdiMDNlMiJ9fX0="}]}}}}],Marker:1b,NoGravity:1b,NoBasePlate:1b,Invisible:1b,Small:1b}

data modify block 0 1 0 Text1 set value '{"nbt":"shop.name","storage":"game:lang","color":"green","bold":true}'
data modify entity @e[type=minecraft:area_effect_cloud,tag=shop_name,sort=nearest,limit=1] CustomName set from block 0 1 0 Text1
data modify block 0 1 0 Text1 set value '{"nbt":"shop.usage","storage":"game:lang","color":"gray","italic":true}'
data modify entity @e[type=minecraft:area_effect_cloud,tag=shop_usage,sort=nearest,limit=1] CustomName set from block 0 1 0 Text1

function #game:resources/views/gui/shop