team add sr.red
team add sr.blue
team add sr.green
team add sr.yellow

team modify sr.red color red
team modify sr.blue color dark_aqua
team modify sr.green color green
team modify sr.yellow color yellow

team modify sr.red friendlyFire false
team modify sr.blue friendlyFire false
team modify sr.green friendlyFire false
team modify sr.yellow friendlyFire false

team modify sr.red collisionRule pushOwnTeam
team modify sr.blue collisionRule pushOwnTeam
team modify sr.green collisionRule pushOwnTeam
team modify sr.yellow collisionRule pushOwnTeam

team add sr.players
team modify sr.players color gray
team modify sr.players friendlyFire false
team modify sr.players collisionRule never

scoreboard objectives add sr.var dummy
scoreboard objectives add sr.const dummy
scoreboard objectives add sr.config dummy

scoreboard objectives add sr.souls dummy
scoreboard objectives add sr.armor_level dummy
scoreboard objectives add sr.respawn_timer dummy
scoreboard objectives add sr.shulker_health dummy
scoreboard objectives add sr.shulker_level dummy
scoreboard objectives add sr.spawner_level dummy
scoreboard objectives add sr.spawner_timer dummy
scoreboard objectives add sr.sword_level dummy
scoreboard objectives add sr.player_id dummy

scoreboard objectives add sr.rules trigger
scoreboard objectives add sr.confirm trigger

scoreboard objectives add sr.food food
scoreboard objectives add sr.kill_count playerKillCount
scoreboard objectives add sr.death_count deathCount
scoreboard objectives add sr.dead deathCount
scoreboard objectives add sr.pickup minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add sr.connect minecraft.custom:minecraft.leave_game
scoreboard objectives add sr.drop minecraft.custom:minecraft.drop
scoreboard objectives add sr.menu dummy

scoreboard players set #-1 sr.const -1
scoreboard players set #20 sr.const 20
scoreboard players set #100 sr.const 100

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

execute if score $status sr.var matches 2 run gamerule fall_damage true
execute unless score $status sr.var matches 2 run gamerule fall_damage false

forceload add 0 0
setblock 0 0 0 minecraft:yellow_shulker_box
# Since 26.3 a sign only resolves text components and runs click commands with this flag.
setblock 0 1 0 minecraft:air
setblock 0 1 0 minecraft:oak_sign{allow_op_features:1b}
setblock 0 2 0 minecraft:decorated_pot
