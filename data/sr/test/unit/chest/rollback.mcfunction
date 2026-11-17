# @dummy
# @environment sr:unit
# @max_ticks 60
# A rolled back player gets back the inventory, armour, offhand and cursor item of their last snapshot.
await entity @s[gamemode=adventure]
clear @s
item replace entity @s container.3 with minecraft:stone 5
item replace entity @s armor.feet with minecraft:leather_boots
item replace entity @s armor.legs with minecraft:iron_leggings
item replace entity @s armor.chest with minecraft:iron_chestplate
item replace entity @s armor.head with minecraft:iron_helmet
item replace entity @s weapon.offhand with minecraft:shield
item replace entity @s player.cursor with minecraft:diamond 2
function sr:system/player/inventory/save
# Writing the snapshot does not count as an inventory change, or it would be rewritten every tick.
await delay 2
assert entity @s[advancements={sr:check_inventory={changed=false}}]
assert items entity @s armor.body *[minecraft:custom_data~{smithed:{ignore:{everything:1b}}}]
clear @s *[!minecraft:custom_data~{smithed:{ignore:{everything:1b}}}]
item replace entity @s container.0 with minecraft:dirt 1
item replace entity @s armor.head with minecraft:leather_helmet
function sr:system/player/inventory/restore
assert items entity @s container.3 minecraft:stone
assert items entity @s armor.feet minecraft:leather_boots
assert items entity @s armor.legs minecraft:iron_leggings
assert items entity @s armor.chest minecraft:iron_chestplate
assert items entity @s armor.head minecraft:iron_helmet
assert items entity @s weapon.offhand minecraft:shield
assert items entity @s player.cursor minecraft:diamond
assert result 5 run clear @s minecraft:stone 0
assert result 2 run clear @s minecraft:diamond 0
assert result 0 run clear @s minecraft:dirt 0
assert result 0 run clear @s minecraft:leather_helmet 0
clear @s
