scoreboard players operation #green souls = @e[type=minecraft:marker,tag=upgrader,tag=green,limit=1] souls

execute as @a[team=green] run title @s actionbar [{"text":"","color":"gray"},{"storage":"game:core","nbt":"tmp.style","interpret":true},{"storage":"game:lang","nbt":"actionbar.souls","color":"dark_aqua","bold":true}, {"text":"","color":"gray"}," ",{"score":{"name":"#green","objective":"souls"}},{"text":" • "},{"storage":"game:lang","nbt":"actionbar.kills","color":"dark_green","bold":true}," ",{"score":{"name":"@s","objective":"killCount"}},{"text":" • "},{"storage":"game:lang","nbt":"actionbar.deaths","color":"dark_red","bold":true}," ",{"score":{"name":"@s","objective":"deathCount"}}]