execute at @s store result score #count var if data block ~ ~ ~ Items[{tag:{upgradeId:{}}}]
execute unless score #count var matches 5 at @s run function game:managers/upgraders/update