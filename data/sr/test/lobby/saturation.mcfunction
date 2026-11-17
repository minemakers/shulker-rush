# @environment sr:lobby
# @max_ticks 100
# Hungry players are fed.
await loaded 5000 216 0
dummy eater spawn
await entity @a[name=eater,gamemode=adventure]
effect give eater minecraft:hunger 2 255 true
await entity @a[name=eater,nbt={active_effects:[{id:"minecraft:saturation"}]}]
dummy eater leave
