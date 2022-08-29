data modify storage game:lang greetings set value "Welcome to"

data modify storage game:lang countdown.0 set value "The game has just started!"
data modify storage game:lang countdown.1 set value ["Starts in ", " second..."]
data modify storage game:lang countdown.2 set value ["Starts in ", " seconds..."]

data modify storage game:lang respawning.1 set value ["Respawn in ", " second..."]
data modify storage game:lang respawning.2 set value ["Respawn in ", " seconds..."]

data modify storage game:lang pick_teams set value "Pick a team to start the game"

data modify storage game:lang arena.grassy_islands set value "Grassy Islands"
data modify storage game:lang arena.cloudy_gates set value "Cloudy Gates"
data modify storage game:lang arena.mechanical_sky set value "Mechanical Sky"

data modify storage game:lang rules.objective append value [{text: "The objective consists of"}]
data modify storage game:lang rules.objective append value [{strong: "killing the opposing team's Shulker"}, {text: "."}]
data modify storage game:lang rules.objective append value [{text: "Once it has been destroyed, the enemies"}]
data modify storage game:lang rules.objective append value [{strong: "will no longer be able to respawn"}]
data modify storage game:lang rules.objective append value [{text: "and can be defeated."}]

data modify storage game:lang rules.spawners append value [{text: "On your island, "}, {ref: 0}, {text: " and "}, {ref: 1}]
data modify storage game:lang rules.spawners append value [{text: "will appear regularly. On some islands,"}]
data modify storage game:lang rules.spawners append value [{ref: 2}, {text: " generators can be found."}]
data modify storage game:lang rules.spawners append value [{text: "These 3 resources allow you to"}]
data modify storage game:lang rules.spawners append value [{strong: "purchase items"}, {text: " in the shop."}]

data modify storage game:lang rules.upgrades append value [{text: "Killing players will temporarly"}]
data modify storage game:lang rules.upgrades append value [{strong: "highlight the enemy's Shulker"}]
data modify storage game:lang rules.upgrades append value [{text: "and grant you a "}, {ref: 3}]
data modify storage game:lang rules.upgrades append value [{text: "which can be used to"}]
data modify storage game:lang rules.upgrades append value [{strong: "upgrade your skills"}, {text: "."}]

data modify storage game:lang rules.prompt set value {text: "Game rules", action: "reveal", "hover": "Click to show the rules"}
data modify storage game:lang stop.prompt set value {text: "It seems someone left and you are the only team standing. Do you want to end the game?", action: "yes", "hover": "Click to end the game"}

data modify storage game:lang click_me set value "Right click me"
data modify storage game:lang click_here set value "Right click here"
data modify storage game:lang click_open set value "Click to open"
data modify storage game:lang game_launcher set value "Start the game"
data modify storage game:lang arena_picker set value "Change arena"
data modify storage game:lang lang_picker set value "Change language"

data modify storage game:lang team_picker.red set value "Red Team"
data modify storage game:lang team_picker.blue set value "Blue Team"
data modify storage game:lang team_picker.green set value "Green Team"
data modify storage game:lang team_picker.yellow set value "Yellow Team"
data modify storage game:lang team_picker.spectator set value "Spectate"

data modify storage game:lang join_team.red set value "You just joined the Red Team!"
data modify storage game:lang join_team.blue set value "You just joined the Blue Team!"
data modify storage game:lang join_team.green set value "You just joined the Green Team!"
data modify storage game:lang join_team.yellow set value "You just joined the Yellow Team!"

data modify storage game:lang stats.kill set value ["You killed ", " players"]
data modify storage game:lang stats.death set value ["You died ", " times"]

data modify storage game:lang win.red set value {title: "The Red Team", subtitle: "won the game!", message: "The Red Team won the game"}
data modify storage game:lang win.blue set value {title: "The Blue Team", subtitle: "won the game!", message: "The Blue Team won the game"}
data modify storage game:lang win.green set value {title: "The Green Team", subtitle: "won the game!", message: "The Green Team won the game"}
data modify storage game:lang win.yellow set value {title: "The Yellow Team", subtitle: "won the game!", message: "The Yellow Team won the game"}

data modify storage game:lang shulker_death.red set value {message: "The Red Shulker has been killed!", warning: "Red players can no longer respawn..."}
data modify storage game:lang shulker_death.blue set value {message: "The Blue Shulker has been killed!", warning: "Blue players can no longer respawn..."}
data modify storage game:lang shulker_death.green set value {message: "The Green Shulker has been killed!", warning: "Green players can no longer respawn..."}
data modify storage game:lang shulker_death.yellow set value {message: "The Yellow Shulker has been killed!", warning: "Yellow players can no longer respawn..."}

data modify storage game:lang errors.launch set value "Sorry, there are not enough players to start the game!"
data modify storage game:lang errors.shulker_block set value "An error occured while placing the shulker!"
data modify storage game:lang errors.shulker_island set value "You cannot place a shulker outside of its island!"

data modify storage game:lang suicide append value ["", " burned up during atmospheric reentry"]
data modify storage game:lang suicide append value ["", " committed suicide"]
data modify storage game:lang suicide append value ["", " died"]
data modify storage game:lang suicide append value ["", " flew too close to the sun"]
data modify storage game:lang suicide append value ["", " got lost in space"]
data modify storage game:lang suicide append value ["", " lost the will to live"]
data modify storage game:lang suicide append value ["", " reached the bottom of the world"]
data modify storage game:lang suicide append value ["", " tried to reach a parallel universe"]
data modify storage game:lang suicide append value ["", " tried to swim in the air"]
data modify storage game:lang killed_player set value ["", " was killed by ", ""]
data modify storage game:lang eliminated set value ["Sorry, ", " you are eliminated!"]

data modify storage game:lang cost set value "Cost"
data modify storage game:lang bound set value "Permanent"
data modify storage game:lang maxed set value "Maxed out"
data modify storage game:lang merchant set value "Resources Merchant"

data modify storage game:lang soul set value "Soul"
data modify storage game:lang iron set value "Iron"
data modify storage game:lang gold set value "Gold"
data modify storage game:lang crystal set value "Crystal"

data modify storage game:lang red_shulker set value "Red Shulker"
data modify storage game:lang blue_shulker set value "Blue Shulker"
data modify storage game:lang green_shulker set value "Green Shulker"
data modify storage game:lang yellow_shulker set value "Yellow Shulker"

data modify storage game:lang leave_team set value {name: "Leave team", usage: "Right click"}

data modify storage game:lang fast_travel set value {name: "Fast Travel", help: "Go back to your shulker instantly"}
data modify storage game:lang shulker_picker set value {name: "Shulker Picker", help: "Capture a shulker"}
data modify storage game:lang explosive_bottle set value {name: "Explosive Bottle", help: "Explode any block"}

data modify storage game:lang enhanced_shulker set value {name: "Enhanced Shulker", help: "Near your shulker"}
data modify storage game:lang improved_spawner set value {name: "Improved Generator", help: "Increased speed"}
data modify storage game:lang reinforced_armor set value {name: "Reinforced Armor", help: "All team armors"}
data modify storage game:lang sharpened_sword set value {name: "Sharpened Sword", help: "All team swords"}
data modify storage game:lang shulker_health set value {name: "Cabinet of Souls", help: ["Heal your shulker","+ ❤ Health Point"]}

data modify storage game:lang shop set value {name: "Item shop", help: "Click here to buy", usage: "Right click to use"}
data modify storage game:lang upgrader set value {name: "Upgrades", help: "Click here to buy", usage: "Right click to use"}
# No translator
data remove storage game:lang translator