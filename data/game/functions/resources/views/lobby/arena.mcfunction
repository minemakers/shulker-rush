# Change the displayed arena head
item modify entity @e[type=minecraft:armor_stand,tag=arena_head] armor.head game:arena

# Move the selected arena indicator
kill @e[type=minecraft:armor_stand,tag=picker_arrow]
execute if score $arena var matches 1 at @e[type=minecraft:armor_stand,tag=arena1] run summon minecraft:armor_stand ~ ~-.45 ~.35 {Tags:["picker_arrow"],Invulnerable:1,Invisible:1,NoBasePlate:1,Rotation:[180f,0f],DisabledSlots:2096896,NoGravity:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1791012615,-59816339,-1370244978,-1061184572],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmU5YWU3YTRiZTY1ZmNiYWVlNjUxODEzODlhMmY3ZDQ3ZTJlMzI2ZGI1OWVhM2ViNzg5YTkyYzg1ZWE0NiJ9fX0="}]}}}}]}
execute if score $arena var matches 2 at @e[type=minecraft:armor_stand,tag=arena2] run summon minecraft:armor_stand ~ ~-.45 ~.35 {Tags:["picker_arrow"],Invulnerable:1,Invisible:1,NoBasePlate:1,Rotation:[180f,0f],DisabledSlots:2096896,NoGravity:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1791012615,-59816339,-1370244978,-1061184572],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmU5YWU3YTRiZTY1ZmNiYWVlNjUxODEzODlhMmY3ZDQ3ZTJlMzI2ZGI1OWVhM2ViNzg5YTkyYzg1ZWE0NiJ9fX0="}]}}}}]}
execute if score $arena var matches 3 at @e[type=minecraft:armor_stand,tag=arena3] run summon minecraft:armor_stand ~ ~-.45 ~.35 {Tags:["picker_arrow"],Invulnerable:1,Invisible:1,NoBasePlate:1,Rotation:[180f,0f],DisabledSlots:2096896,NoGravity:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1791012615,-59816339,-1370244978,-1061184572],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYmU5YWU3YTRiZTY1ZmNiYWVlNjUxODEzODlhMmY3ZDQ3ZTJlMzI2ZGI1OWVhM2ViNzg5YTkyYzg1ZWE0NiJ9fX0="}]}}}}]}

# Reset names
function game:resources/views/lobby/formatters/arena
