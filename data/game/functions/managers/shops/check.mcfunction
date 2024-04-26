execute at @s store result score #count var if data block ~ ~ ~ Items[{components:{"minecraft:custom_data":{shop_id:{}}}}]
execute unless score #count var matches 27 at @s run function game:managers/shops/update
