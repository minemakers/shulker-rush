execute store result score #iron var if items entity @s container.* minecraft:raw_iron
execute store result score #gold var if items entity @s container.* minecraft:raw_gold
execute store result score #crystal var if items entity @s container.* minecraft:amethyst_shard

function game:managers/shops/dispatch
execute if score #error var matches 1.. run function game:managers/shops/purchase/errors

data modify storage game:core tmp[0].Slot set value 0b
data modify block 0 0 0 Items set from storage game:core tmp
item replace entity @s player.cursor from block 0 0 0 container.0
data remove storage game:core tmp[0]
