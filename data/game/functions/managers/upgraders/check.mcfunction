execute at @s store result score #count var if data block ~ ~ ~ Items[{components:{"minecraft:custom_data":{upgrade_id:{}}}}]
execute unless score #count var matches 5 at @s run function game:managers/upgraders/update
