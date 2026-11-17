# Check whether the player is holding the shulker picker in mainhand
execute store success score #success sr.var if predicate sr:shulker_picker

# Replace the shulker_picker by the shulker_block item
execute if score #success sr.var matches 1 run loot replace entity @s weapon.mainhand loot sr:block/targeted_shulker
execute if score #success sr.var matches 0 run loot replace entity @s weapon.offhand loot sr:block/targeted_shulker

# Play the pickup sound and animation
execute at @e[type=minecraft:shulker,sort=nearest,limit=1] run particle minecraft:witch ~ ~.5 ~ .15 .15 .15 .05 10
execute at @e[type=minecraft:shulker,sort=nearest,limit=1] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0
tp @e[type=minecraft:shulker,sort=nearest,limit=1] ~ -1000 ~
kill @e[type=minecraft:shulker,predicate=sr:location/below_arena]
