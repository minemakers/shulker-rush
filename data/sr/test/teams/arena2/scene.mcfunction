# @environment sr:teams/arena2
# @max_ticks 100
# Team picking on the second arena offers its two teams, the random choice and the spectator spot.
await loaded 5000 216 0
await loaded 2026 229 0
await loaded 2026 209 53
await loaded 2026 209 -55
# Entities only show up once their chunk also ticks them.
await delay 20
assert result 2 run execute if entity @e[type=minecraft:interaction,tag=sr.team]
assert entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.blue]
assert entity @e[type=minecraft:interaction,tag=sr.team,tag=sr.yellow]
assert entity @e[type=minecraft:interaction,tag=sr.random]
assert entity @e[type=minecraft:text_display,tag=sr.spectator]
