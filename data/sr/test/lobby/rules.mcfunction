# @environment sr:lobby
# @max_ticks 60
# The rules trigger prints the rules and re-arms itself.
await loaded 5000 216 0
dummy reader spawn
await entity @a[name=reader,gamemode=adventure]
execute as reader run trigger sr.rules set 1
await data storage sr:lang rules.full
await score reader sr.rules matches 0
dummy reader leave
