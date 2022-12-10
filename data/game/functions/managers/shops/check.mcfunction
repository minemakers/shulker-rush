execute at @s store result score #count var if data block ~ ~ ~ Items[{tag:{shopId:{}}}]
execute unless score #count var matches 27 at @s run function game:managers/shops/update
