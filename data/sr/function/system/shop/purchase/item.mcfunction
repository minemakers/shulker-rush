$scoreboard players operation #cost.iron sr.var = $cost.$(id).iron sr.config
$scoreboard players operation #cost.gold sr.var = $cost.$(id).gold sr.config
$scoreboard players operation #cost.crystal sr.var = $cost.$(id).crystal sr.config

$function sr:system/shop/handler/$(handler) {loot:"$(loot)"}
