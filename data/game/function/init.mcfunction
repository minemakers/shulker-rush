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
scoreboard objectives add armor_level dummy
scoreboard objectives add respawn_timer dummy
scoreboard objectives add shulker_health dummy
scoreboard objectives add shulker_level dummy
scoreboard objectives add spawner_level dummy
scoreboard objectives add spawner_timer dummy
scoreboard objectives add sword_level dummy
scoreboard objectives add player_id dummy

scoreboard objectives add rules trigger
scoreboard objectives add confirm trigger

scoreboard objectives add food food
scoreboard objectives add kill_count playerKillCount
scoreboard objectives add death_count deathCount
scoreboard objectives add pickup minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add connect minecraft.custom:minecraft.leave_game

scoreboard players set #-1 const -1
scoreboard players set #20 const 20
scoreboard players set #100 const 100

gamerule advance_time false
gamerule advance_weather false
gamerule allow_entering_nether_using_portals false
gamerule block_drops true
gamerule command_block_output false
gamerule entity_drops false
gamerule fire_spread_radius_around_player 0
gamerule immediate_respawn true
gamerule keep_inventory true
gamerule limited_crafting true
gamerule locator_bar false
gamerule log_admin_commands false
gamerule max_command_forks 65536
gamerule max_command_sequence_length 65536
gamerule mob_griefing false
gamerule natural_health_regeneration true
gamerule raids false
gamerule random_tick_speed 0
gamerule reduced_debug_info true
gamerule respawn_radius 0
gamerule send_command_feedback false
gamerule show_advancement_messages false
gamerule show_death_messages false
gamerule spawn_mobs false
gamerule spawn_monsters false
gamerule spawn_patrols false
gamerule spawn_phantoms false
gamerule spawn_wandering_traders false
gamerule spawn_wardens false
gamerule spectators_generate_chunks false
gamerule spread_vines false

execute if score $status var matches 2 run gamerule fall_damage true
execute unless score $status var matches 2 run gamerule fall_damage false

forceload add 0 0
setblock 0 0 0 minecraft:yellow_shulker_box
setblock 0 1 0 minecraft:oak_sign
setblock 0 2 0 minecraft:decorated_pot
