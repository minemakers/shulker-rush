execute if entity @s[scores={shulker_level=1..}] run effect give @a[team=yellow,distance=..11] minecraft:regeneration 1 0 true
execute if entity @s[scores={shulker_level=2..}] run effect give @a[team=!yellow,distance=..7] minecraft:mining_fatigue 1 0 true
execute if entity @s[scores={shulker_level=3..}] run effect give @a[team=!yellow,distance=..15] minecraft:glowing 1 0 true
