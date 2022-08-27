scoreboard players remove $arena var 1
execute if score $arena var matches ..0 run scoreboard players set $arena var 3

function #game:resources/views/arena_picker
playsound minecraft:block.stone_button.click_on master @s ~ ~ ~ 10000 1.5