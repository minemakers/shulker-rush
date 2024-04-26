scoreboard players set #error var 0
scoreboard players set #handler var 0

execute if items entity @s player.cursor *[minecraft:custom_data~{shop_id:{b0:1b}}] run scoreboard players add #handler var 1
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_id:{b1:1b}}] run scoreboard players add #handler var 2
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_id:{b2:1b}}] run scoreboard players add #handler var 4
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_id:{b3:1b}}] run scoreboard players add #handler var 8
execute if items entity @s player.cursor *[minecraft:custom_data~{shop_id:{b4:1b}}] run scoreboard players add #handler var 16

execute if score #handler var matches 0 run scoreboard players set #error var -1
execute if score #handler var matches 1 run function game:managers/shops/handlers/wooden_sword
execute if score #handler var matches 2 run function game:managers/shops/handlers/stone_sword
execute if score #handler var matches 3 run function game:managers/shops/handlers/iron_sword
execute if score #handler var matches 4 run function game:managers/shops/handlers/golden_sword
execute if score #handler var matches 5 run function game:managers/shops/handlers/fishing_rod
execute if score #handler var matches 6 run function game:managers/shops/handlers/chainmail_armor
execute if score #handler var matches 7 run function game:managers/shops/handlers/iron_armor
execute if score #handler var matches 8 run function game:managers/shops/handlers/diamond_armor
execute if score #handler var matches 9 run function game:managers/shops/handlers/elytra
execute if score #handler var matches 10 run function game:managers/shops/handlers/firework_rocket
execute if score #handler var matches 11 run function game:managers/shops/handlers/bow
execute if score #handler var matches 12 run function game:managers/shops/handlers/super_bow
execute if score #handler var matches 13 run function game:managers/shops/handlers/crossbow
execute if score #handler var matches 14 run function game:managers/shops/handlers/arrow
execute if score #handler var matches 15 run function game:managers/shops/handlers/ender_pearl
execute if score #handler var matches 16 run function game:managers/shops/handlers/explosive_bottle
execute if score #handler var matches 17 run function game:managers/shops/handlers/golden_axe
execute if score #handler var matches 18 run function game:managers/shops/handlers/diamond_pickaxe
execute if score #handler var matches 19 run function game:managers/shops/handlers/stained_glass
execute if score #handler var matches 20 run function game:managers/shops/handlers/oak_planks
execute if score #handler var matches 21 run function game:managers/shops/handlers/end_stone
execute if score #handler var matches 22 run function game:managers/shops/handlers/shulker_picker
execute if score #handler var matches 23 run function game:managers/shops/handlers/scaffolding
execute if score #handler var matches 24 run function game:managers/shops/handlers/ancient_debris
