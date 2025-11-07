data modify block 5004 214 6 front_text.messages[1] set value {"text":"Website","color":"gold","bold":true}
data modify block 5003 214 6 front_text.messages[1] set value {"text":"Twitter","color":"#1DA1F2","bold":true}
data modify block 4997 214 6 front_text.messages[1] set value {"text":"Youtube","color":"#FF0000","bold":true}
data modify block 4996 214 6 front_text.messages[1] set value {"text":"Github","color":"#6E5494","bold":true}

data modify block 5004 214 6 front_text.messages[2] set value {"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}
data modify block 5003 214 6 front_text.messages[2] set value {"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}
data modify block 4997 214 6 front_text.messages[2] set value {"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}
data modify block 4996 214 6 front_text.messages[2] set value {"storage":"game:lang","nbt":"click_here","color":"gray","italic":true}

data modify block 5004 214 6 front_text.messages[3] set value {"text":"","click_event":{"action":"run_command","command":"tellraw @s {\"text\":\"➣ Website [https://minemakers.net]\",\"color\":\"gold\",\"click_event\":{\"action\":\"open_url\",\"url\":\"https://minemakers.net\"},\"hover_event\":{\"action\":\"show_text\",\"value\":[{\"storage\":\"game:lang\",\"nbt\":\"click_open\"}]}}"}}
data modify block 5003 214 6 front_text.messages[3] set value {"text":"","click_event":{"action":"run_command","command":"tellraw @s {\"text\":\"➣ Twitter [https://twitter.com/minemakersfr]\",\"color\":\"#1DA1F2\",\"click_event\":{\"action\":\"open_url\",\"url\":\"https://twitter.com/minemakersfr\"},\"hover_event\":{\"action\":\"show_text\",\"value\":[{\"storage\":\"game:lang\",\"nbt\":\"click_open\"}]}}"}}
data modify block 4997 214 6 front_text.messages[3] set value {"text":"","click_event":{"action":"run_command","command":"tellraw @s {\"text\":\"➣ Youtube [https://www.youtube.com/@minemakers]\",\"color\":\"#FF0000\",\"click_event\":{\"action\":\"open_url\",\"url\":\"https://www.youtube.com/@minemakers\"},\"hover_event\":{\"action\":\"show_text\",\"value\":[{\"storage\":\"game:lang\",\"nbt\":\"click_open\"}]}}"}}
data modify block 4996 214 6 front_text.messages[3] set value {"text":"","click_event":{"action":"run_command","command":"tellraw @s {\"text\":\"➣ Github [https://github.com/minemakers]\",\"color\":\"#6E5494\",\"click_event\":{\"action\":\"open_url\",\"url\":\"https://github.com/minemakers\"},\"hover_event\":{\"action\":\"show_text\",\"value\":[{\"storage\":\"game:lang\",\"nbt\":\"click_open\"}]}}"}}
