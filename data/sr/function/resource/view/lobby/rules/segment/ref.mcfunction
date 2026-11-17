execute store result score #ref sr.var run data get storage sr:core rules.section[0][0].ref

execute if score #ref sr.var matches 0 run data modify block 0 1 0 front_text.messages[2] set value [{"storage":"sr:lang","nbt":"iron","interpret":true,"color":"white","bold":true}]
execute if score #ref sr.var matches 1 run data modify block 0 1 0 front_text.messages[2] set value [{"storage":"sr:lang","nbt":"gold","interpret":true,"color":"gold","bold":true}]
execute if score #ref sr.var matches 2 run data modify block 0 1 0 front_text.messages[2] set value [{"storage":"sr:lang","nbt":"crystal","interpret":true,"color":"light_purple","bold":true}]
execute if score #ref sr.var matches 3 run data modify block 0 1 0 front_text.messages[2] set value [{"storage":"sr:lang","nbt":"soul","interpret":true,"color":"aqua","bold":true}]

data modify block 0 1 0 front_text.messages[0] set value [{"nbt":"front_text.messages[0]","block":"0 1 0","interpret":true},{"nbt":"front_text.messages[2]","block":"0 1 0","interpret":true}]
data modify block 0 1 0 front_text.messages[1] set value [{"nbt":"front_text.messages[1]","block":"0 1 0","interpret":true},{"nbt":"front_text.messages[2]","block":"0 1 0","interpret":true}]
