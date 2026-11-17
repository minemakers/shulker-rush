tag @s add sr.shop
$tag @s add sr.$(team)

execute if block ~ ~ ~ #sr:shop[facing=west] run tp @s ~ ~ ~ -90 0
execute if block ~ ~ ~ #sr:shop[facing=east] run tp @s ~ ~ ~ 90 0
execute if block ~ ~ ~ #sr:shop[facing=north] run tp @s ~ ~ ~ 0 0
execute if block ~ ~ ~ #sr:shop[facing=south] run tp @s ~ ~ ~ 180 0

execute rotated as @s run fill ^1 ^ ^1 ^-1 ^ ^1 minecraft:moving_piston replace minecraft:air

data modify block 0 1 0 front_text.messages[0] set value {"nbt":"shop.name","interpret":true,"storage":"sr:lang"}
data modify block ~ ~ ~ CustomName set from block 0 1 0 front_text.messages[0]

execute at @s run summon minecraft:text_display ^ ^1.3 ^.6 {Tags:["sr.shop_display"],text:{"nbt":"shop.name","interpret":true,"storage":"sr:lang","color":"green","bold":true}}
execute at @s run summon minecraft:text_display ^ ^1.0 ^.6 {Tags:["sr.shop_display"],text:{"nbt":"shop.usage","interpret":true,"storage":"sr:lang","color":"gray","italic":true}}
execute at @s run summon minecraft:item_display ^ ^.75 ^.35 {Tags:["sr.shop_display"],brightness:{block:15,sky:15},item:{id:"minecraft:player_head",count:1b,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODkyNmMxZjJjM2MxNGQwODZjNDBjZmMyMzVmZTkzODY5NGY0YTUxMDY3YWRhNDcyNmI0ODZlYTFjODdiMDNlMiJ9fX0="}]}}}}
execute at @s as @e[tag=sr.shop_display,distance=..2] positioned as @s run tp @s ~ ~ ~ ~ ~

function sr:resource/view/game/gui/shop
