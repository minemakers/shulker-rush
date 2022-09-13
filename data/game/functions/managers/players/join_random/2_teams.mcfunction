execute store result score #blue var if entity @a[team=blue]
execute store result score #yellow var if entity @a[team=yellow]

# If player count is 0, maybe join blue?
execute if score #blue var = #yellow var if predicate game:random_bool run team join blue
execute if score #blue var < #yellow var run team join blue

execute if entity @s[team=players] run team join yellow