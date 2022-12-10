execute store success score #success var run clear @s #game:all{shopId:{}} 0
execute if score #success var matches 1 run function game:managers/shops/purchase/handle
