execute store result score #iron sr.var if items entity @s container.* minecraft:raw_iron
execute store result score #gold sr.var if items entity @s container.* minecraft:raw_gold
execute store result score #crystal sr.var if items entity @s container.* minecraft:amethyst_shard

function sr:system/shop/dispatch
execute if score #error sr.var matches 1.. run function sr:system/shop/purchase/error

item replace block 0 2 0 contents with minecraft:air
data modify block 0 2 0 item set from storage sr:core _[0]
item replace entity @s player.cursor from block 0 2 0 contents
