# @dummy
# @environment sr:unit
# @max_ticks 60
# Swords are tagged so upgrades can find them, and follow the team's sword level.
await entity @s[gamemode=adventure]
loot give @s loot sr:equipment/iron_sword
assert items entity @s container.* minecraft:iron_sword[minecraft:custom_data~{sword:1b}]
scoreboard players set @s sr.sword_level 2
function sr:event/replace_sword
assert items entity @s container.* minecraft:iron_sword[minecraft:enchantments~[{enchantments:"minecraft:sharpness",levels:2}]]
