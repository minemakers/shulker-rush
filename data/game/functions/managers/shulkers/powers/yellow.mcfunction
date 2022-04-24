execute if entity @s[scores={shulkerLevel=1..}] run effect give @a[team=yellow,distance=..11] minecraft:regeneration 1 0 true
execute if entity @s[scores={shulkerLevel=2..}] run effect give @a[team=!yellow,distance=..7] minecraft:mining_fatigue 1 0 true
execute if entity @s[scores={shulkerLevel=3..}] run effect give @a[team=!yellow,distance=..15] minecraft:glowing 1 0 true