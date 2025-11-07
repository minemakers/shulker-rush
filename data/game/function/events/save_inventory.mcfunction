advancement revoke @s only game:check_inventory changed

data modify storage game:core _ set value {equipment:{},inventory:[]}
data modify storage game:core _.equipment set from entity @s equipment
data modify storage game:core _.inventory set from entity @s Inventory

$data modify storage game:core players[{uuid:$(UUID)}] merge from storage game:core _
