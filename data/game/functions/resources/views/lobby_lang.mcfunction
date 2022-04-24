data modify block 0 1 0 Text1 set value '[{"storage":"game:lang","nbt":"game_launcher","color":"yellow","bold":true}]'
data modify entity @e[type=minecraft:armor_stand,tag=game_launcher,limit=1] CustomName set from block 0 1 0 Text1

data modify block 0 1 0 Text1 set value '[{"storage":"game:lang","nbt":"click_me","color":"gray"}]'
data modify entity @e[type=minecraft:armor_stand,tag=game_launcher_help,limit=1] CustomName set from block 0 1 0 Text1

data merge block 5000 214 6 {Text2:'{"storage":"game:lang","nbt":"arena_picker","color":"white","bold":true}',Text3:'{"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}'}

data merge block 5004 214 6 {Text2:'{"text":"Website","color":"gold","bold":true}',Text3:'{"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}'}
data merge block 5003 214 6 {Text2:'{"text":"Twitter","color":"aqua","bold":true}',Text3:'{"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}'}
data merge block 4997 214 6 {Text2:'{"text":"Youtube","color":"red","bold":true}',Text3:'{"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}'}
data merge block 4996 214 6 {Text2:'{"text":"Github","color":"gray","bold":true}',Text3:'{"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}'}

data merge block 5004 214 6 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"➣ Website [https://minemakers.net]\\",\\"color\\":\\"gold\\",\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://minemakers.net\\"},\\"hoverEvent\\":{\\"action\\":\\"show_text\\",\\"contents\\":[{\\"storage\\":\\"game:lang\\",\\"nbt\\":\\"click_open\\"}]}}"}}'}
data merge block 5003 214 6 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"➣ Twitter [https://twitter.com/minemakersfr]\\",\\"color\\":\\"aqua\\",\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://twitter.com/minemakersfr\\"},\\"hoverEvent\\":{\\"action\\":\\"show_text\\",\\"contents\\":[{\\"storage\\":\\"game:lang\\",\\"nbt\\":\\"click_open\\"}]}}"}}'}
data merge block 4997 214 6 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"➣ Youtube [https://www.youtube.com/c/MineMakersTeam]\\",\\"color\\":\\"red\\",\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://www.youtube.com/c/MineMakersTeam\\"},\\"hoverEvent\\":{\\"action\\":\\"show_text\\",\\"contents\\":[{\\"storage\\":\\"game:lang\\",\\"nbt\\":\\"click_open\\"}]}}"}}'}
data merge block 4996 214 6 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"tellraw @s {\\"text\\":\\"➣ Github [https://github.com/minemakers]\\",\\"color\\":\\"gray\\",\\"clickEvent\\":{\\"action\\":\\"open_url\\",\\"value\\":\\"https://github.com/minemakers\\"},\\"hoverEvent\\":{\\"action\\":\\"show_text\\",\\"contents\\":[{\\"storage\\":\\"game:lang\\",\\"nbt\\":\\"click_open\\"}]}}"}}'}