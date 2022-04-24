function game:managers/shops/dispatch
execute if score #error var matches 0 run function game:managers/shops/purchase/terminate
execute if score #error var matches 1.. run function game:managers/shops/purchase/errors
clear @s #game:all{shopId:{}}