advancement revoke @s only sr:check_inventory changed
scoreboard players reset @s sr.drop

item replace entity @s armor.body with minecraft:structure_void[minecraft:equippable={slot:"body"},minecraft:custom_data={smithed:{ignore:{everything:1b}},sr:{snapshot:1b}}]
item override entity @s sr:snapshot/store from entity @s sr:snapshot/live
