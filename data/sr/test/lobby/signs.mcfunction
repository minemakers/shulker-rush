# @environment sr:lobby
# @max_ticks 60
# Signs resolve text and run their click commands: since 26.3 they need allow_op_features for both.
await loaded 5000 216 0
assert data block 5000 214 6 {allow_op_features:1b}
assert data block 5004 214 6 {allow_op_features:1b}
assert data block 4996 214 6 {allow_op_features:1b}
# The utility sign turns a text component into its text, for names and for the rules. The text comes out as it is
# stored: without "interpret", 26.3 prints a string with its quotes.
data modify storage sr:test text set value "Plain text"
data modify block 0 1 0 front_text.messages[0] set value {"storage":"sr:test","nbt":"text","interpret":true}
assert data block 0 1 0 front_text{messages:["Plain text"]}
data modify block 0 1 0 front_text.messages[0] set value {"storage":"sr:test","nbt":"text"}
assert not data block 0 1 0 front_text{messages:["Plain text"]}
data remove storage sr:test text
