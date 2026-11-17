# @environment sr:lobby
# @max_ticks 100
# The language picker cycles through the languages and comes back to English.
await loaded 5000 216 0
dummy linguist spawn
await entity @a[name=linguist,gamemode=adventure]
assert data storage sr:lang {greetings:"Welcome to"}
dummy linguist use entity @e[type=minecraft:interaction,tag=sr.lang_picker,limit=1]
await data storage sr:lang {greetings:"Bienvenue sur"}
assert data storage sr:lang rules
await delay 2
dummy linguist use entity @e[type=minecraft:interaction,tag=sr.lang_picker,limit=1]
await not data storage sr:lang {greetings:"Bienvenue sur"}
assert not data storage sr:lang {greetings:"Welcome to"}
await delay 2
dummy linguist use entity @e[type=minecraft:interaction,tag=sr.lang_picker,limit=1]
await data storage sr:lang {greetings:"Welcome to"}
dummy linguist leave
