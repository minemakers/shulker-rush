execute at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 2

execute if score #cost.iron var matches 64.. run clear @s minecraft:raw_iron 64
execute if score #cost.iron var matches 64.. run scoreboard players remove #cost.iron var 64
execute if score #cost.iron var matches 32.. run clear @s minecraft:raw_iron 32
execute if score #cost.iron var matches 32.. run scoreboard players remove #cost.iron var 32
execute if score #cost.iron var matches 16.. run clear @s minecraft:raw_iron 16
execute if score #cost.iron var matches 16.. run scoreboard players remove #cost.iron var 16
execute if score #cost.iron var matches 8.. run clear @s minecraft:raw_iron 8
execute if score #cost.iron var matches 8.. run scoreboard players remove #cost.iron var 8
execute if score #cost.iron var matches 4.. run clear @s minecraft:raw_iron 4
execute if score #cost.iron var matches 4.. run scoreboard players remove #cost.iron var 4
execute if score #cost.iron var matches 2.. run clear @s minecraft:raw_iron 2
execute if score #cost.iron var matches 2.. run scoreboard players remove #cost.iron var 2
execute if score #cost.iron var matches 1.. run clear @s minecraft:raw_iron 1

execute if score #cost.gold var matches 32.. run clear @s minecraft:raw_gold 32
execute if score #cost.gold var matches 32.. run scoreboard players remove #cost.gold var 32
execute if score #cost.gold var matches 16.. run clear @s minecraft:raw_gold 16
execute if score #cost.gold var matches 16.. run scoreboard players remove #cost.gold var 16
execute if score #cost.gold var matches 8.. run clear @s minecraft:raw_gold 8
execute if score #cost.gold var matches 8.. run scoreboard players remove #cost.gold var 8
execute if score #cost.gold var matches 4.. run clear @s minecraft:raw_gold 4
execute if score #cost.gold var matches 4.. run scoreboard players remove #cost.gold var 4
execute if score #cost.gold var matches 2.. run clear @s minecraft:raw_gold 2
execute if score #cost.gold var matches 2.. run scoreboard players remove #cost.gold var 2
execute if score #cost.gold var matches 1.. run clear @s minecraft:raw_gold 1

execute if score #cost.crystal var matches 16.. run clear @s minecraft:amethyst_shard 16
execute if score #cost.crystal var matches 16.. run scoreboard players remove #cost.crystal var 16
execute if score #cost.crystal var matches 8.. run clear @s minecraft:amethyst_shard 8
execute if score #cost.crystal var matches 8.. run scoreboard players remove #cost.crystal var 8
execute if score #cost.crystal var matches 4.. run clear @s minecraft:amethyst_shard 4
execute if score #cost.crystal var matches 4.. run scoreboard players remove #cost.crystal var 4
execute if score #cost.crystal var matches 2.. run clear @s minecraft:amethyst_shard 2
execute if score #cost.crystal var matches 2.. run scoreboard players remove #cost.crystal var 2
execute if score #cost.crystal var matches 1.. run clear @s minecraft:amethyst_shard 1
