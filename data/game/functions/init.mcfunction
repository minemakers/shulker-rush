#define storage game:core Main
#define storage game:lang Language

team add red
team add blue
team add green
team add yellow
team add players

team modify red color red
team modify blue color dark_aqua
team modify green color green
team modify yellow color yellow
team modify players color gray

team modify red friendlyFire false
team modify blue friendlyFire false
team modify green friendlyFire false
team modify yellow friendlyFire false
team modify players friendlyFire false

team modify red collisionRule pushOwnTeam
team modify blue collisionRule pushOwnTeam
team modify green collisionRule pushOwnTeam
team modify yellow collisionRule pushOwnTeam
team modify players collisionRule never

scoreboard objectives add var dummy
scoreboard objectives add const dummy
scoreboard objectives add config dummy

scoreboard objectives add souls dummy
scoreboard objectives add armorLevel dummy
scoreboard objectives add respawnTimer dummy
scoreboard objectives add shulkerHealth dummy
scoreboard objectives add shulkerLevel dummy
scoreboard objectives add spawnerLevel dummy
scoreboard objectives add spawnerTimer dummy
scoreboard objectives add swordLevel dummy
scoreboard objectives add playerId dummy

scoreboard objectives add rules trigger
scoreboard objectives add confirm trigger

scoreboard objectives add food food
scoreboard objectives add killCount playerKillCount
scoreboard objectives add deathCount deathCount
scoreboard objectives add pickup minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add connect minecraft.custom:minecraft.leave_game

scoreboard players set #-1 const -1
scoreboard players set #20 const 20
scoreboard players set #100 const 100

gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doImmediateRespawn true
gamerule doInsomnia false
gamerule doLimitedCrafting true
gamerule doMobSpawning false
gamerule doPatrolSpawning false
gamerule doTileDrops true
gamerule doTraderSpawning false
gamerule doWardenSpawning false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule mobGriefing false
gamerule naturalRegeneration true
gamerule randomTickSpeed 0
gamerule reducedDebugInfo true
gamerule sendCommandFeedback false
gamerule showDeathMessages false
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false

execute if score $status var matches 2 run gamerule fallDamage true
execute unless score $status var matches 2 run gamerule fallDamage false

data modify block 0 -1 0 auto set value 0

setblock 0 10 0 minecraft:oak_sign
setblock 0 1 0 minecraft:oak_sign
setblock 0 0 0 minecraft:white_shulker_box
setblock 0 -1 0 minecraft:command_block[facing=down]{auto:0b}
setblock 0 -2 0 minecraft:chain_command_block[facing=down]{auto:1b,Command:"data modify block ~ ~1 ~ auto set value 0"}
