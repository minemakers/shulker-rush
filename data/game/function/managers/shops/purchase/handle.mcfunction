execute store result score #iron var if items entity @s container.* minecraft:raw_iron
execute store result score #gold var if items entity @s container.* minecraft:raw_gold
execute store result score #crystal var if items entity @s container.* minecraft:amethyst_shard

function game:managers/shops/dispatch
execute if score #error var matches 1.. run function game:managers/shops/purchase/errors

item replace block 0 2 0 contents with minecraft:air
data modify block 0 2 0 item set from storage game:core _[0]
item replace entity @s player.cursor from block 0 2 0 contents
