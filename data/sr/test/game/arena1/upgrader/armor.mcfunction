# @environment sr:game/arena1
# @max_ticks 300
# Reinforced armour is paid in souls and enchants the boots of the whole team, and only of that team.
# The environment runs a game on the first arena: the players of this test enter it.
await loaded 5000 216 0
await loaded 1059 245 17
await loaded 953 245 17
await loaded 1006 254 27
dummy tailor spawn
team join sr.blue tailor
execute as tailor run function sr:system/player/init
execute as tailor run function sr:system/player/respawn
dummy rival spawn
team join sr.yellow rival
execute as rival run function sr:system/player/init
execute as rival run function sr:system/player/respawn
await entity @a[name=tailor,gamemode=adventure,team=sr.blue]
await entity @a[name=rival,gamemode=adventure,team=sr.yellow]
assert score $status sr.var matches 2
await delay 5
# Everything below runs in one tick and puts the team back as it was: other tests share this upgrader.
data modify storage sr:core _ set value []
scoreboard players operation #souls sr.var = @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.souls
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.souls 4
execute as @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] at @s run loot replace entity tailor player.cursor loot sr:content/upgrader/reinforced_armor
execute as tailor at @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] run function sr:system/upgrader/purchase/handle
assert score #error sr.var matches 0
assert score tailor sr.armor_level matches 1
assert score @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.souls matches 0
assert items entity tailor armor.feet *[minecraft:enchantments~[{enchantments:"minecraft:protection",levels:1}]]
assert not items entity rival armor.feet *[minecraft:enchantments~[{enchantments:"minecraft:protection"}]]
scoreboard players set @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.armor_level 0
scoreboard players set @a[team=sr.blue] sr.armor_level 0
item modify entity @a[team=sr.blue] armor.feet sr:armor
scoreboard players operation @e[type=minecraft:marker,tag=sr.upgrader,tag=sr.blue,limit=1] sr.souls = #souls sr.var
dummy tailor leave
dummy rival leave
