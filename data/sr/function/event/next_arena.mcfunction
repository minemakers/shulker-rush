scoreboard players remove $arena sr.var 1
execute if score $arena sr.var matches ..0 run scoreboard players set $arena sr.var 3

function sr:resource/view/lobby/arena
playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 10000 1.5
