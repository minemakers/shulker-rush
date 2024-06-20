advancement revoke @s only game:check_inventory changed

$data modify storage game:core players[{uuid:$(UUID)}].inventory set from entity @s Inventory
