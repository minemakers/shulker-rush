data modify storage game:lang greetings set value "Bienvenue sur"

data modify storage game:lang countdown.0 set value "La partie vient de commencer !"
data modify storage game:lang countdown.1 set value ["Début dans ", " seconde..."]
data modify storage game:lang countdown.2 set value ["Début dans ", " secondes..."]

data modify storage game:lang respawning.1 set value ["Réapparition dans ", " seconde..."]
data modify storage game:lang respawning.2 set value ["Réapparition dans ", " secondes..."]

data modify storage game:lang pick_teams set value "Choisissez une équipe pour commencer"

data modify storage game:lang rules.objective append value [{text: "Le but est de"}]
data modify storage game:lang rules.objective append value [{strong: tuer le Shulker de l'équipe adverse"}, {text: "."}]
data modify storage game:lang rules.objective append value [{text: "Une fois détruit, les ennemis"}]
data modify storage game:lang rules.objective append value [{strong: "ne pourront plus apparaître"}]
data modify storage game:lang rules.objective append value [{text: "et pourront perdre."}]

data modify storage game:lang rules.spawners append value [{text: "Sur votre île, "}, {ref: 0}, {text: " et "}, {ref: 1}]
data modify storage game:lang rules.spawners append value [{text: "apparaîtront régulièrement. Sur certaines îles,"}]
data modify storage game:lang rules.spawners append value [{ref: 2}, {text: " générateurs peuvent être trouvés."}]
data modify storage game:lang rules.spawners append value [{text: "Ces 3 ressources vous permettent d'"}]
data modify storage game:lang rules.spawners append value [{strong: "acheter des objets"}, {text: " dans la boutique."}]

data modify storage game:lang rules.upgrades append value [{text: "Tuer des joueurs mettra temporairement"}]
data modify storage game:lang rules.upgrades append value [{strong: "en brillance le Shulker adverse"}]
data modify storage game:lang rules.upgrades append value [{text: "et vous donnera un "}, {ref: 3}]
data modify storage game:lang rules.upgrades append value [{text: "qui peut être utilisé pour"}]
data modify storage game:lang rules.upgrades append value [{strong: "améliorés vos skills"}, {text: "."}]

data modify storage game:lang rules.prompt set value {text: "Règles", action: "reveal", "hover": "Cliquer pour afficher les règles"}
data modify storage game:lang stop.prompt set value {text: "Il semblerait que quelqu'un soit parti et que vous soyez la seule équipe en jeu. Voulez-vous terminer la partie ?", action: "yes", "hover": "Cliquer pour terminer la partie"}

data modify storage game:lang click_me set value "Clique droit"
data modify storage game:lang click_here set value "Clique droit"
data modify storage game:lang click_open set value "Clique pour ouvrir"
data modify storage game:lang game_launcher set value "Commencer la partie"
data modify storage game:lang arena_picker set value "Changer d'arène"
data modify storage game:lang lang_picker set value "Changer la langue"

data modify storage game:lang team_picker.red set value "Équipe Rouge"
data modify storage game:lang team_picker.blue set value "Équipe Bleue"
data modify storage game:lang team_picker.green set value "Équipe Verte"
data modify storage game:lang team_picker.yellow set value "Équipe Jaune"
data modify storage game:lang team_picker.spectator set value "Spectateur"

data modify storage game:lang join_team.red set value "Vous avez rejoint l'Équipe Rouge !"
data modify storage game:lang join_team.blue set value "Vous avez rejoint l'Équipe Bleue !"
data modify storage game:lang join_team.green set value "Vous avez rejoint l'Équipe Verte !"
data modify storage game:lang join_team.yellow set value "Vous avez rejoint l'Équipe Jaune !"

data modify storage game:lang stats.kill set value ["Vous avez tué ", " players"]
data modify storage game:lang stats.death set value ["Vous êtes mort ", " times"]

data modify storage game:lang win.red set value {title: "L'Équipe Rouge", subtitle: "remporte la partie !", message: "L'Équipe Rouge remporte la partie"}
data modify storage game:lang win.blue set value {title: "L'Équipe Bleue", subtitle: "remporte la partie !", message: "L'Équipe Bleue remporte la partie"}
data modify storage game:lang win.green set value {title: "L'Équipe Verte", subtitle: "remporte la partie !", message: "L'Équipe Verte remporte la partie"}
data modify storage game:lang win.yellow set value {title: "L'Équipe Jaune", subtitle: "remporte la partie !", message: "L'Équipe Jaune remporte la partie"}

data modify storage game:lang shulker_death.red set value {message: "Le Shulker Rouge a été tué !", warning: "Les joueurs Rouges ne peuvent plus réapparaître..."}
data modify storage game:lang shulker_death.blue set value {message: "Le Shulker Bleu a été tué !", warning: "Les joueurs Bleus ne peuvent plus réapparaître..."}
data modify storage game:lang shulker_death.green set value {message: "Le Shulker Vert a été tué !", warning: "Les joueurs Verts ne peuvent plus réapparaître..."}
data modify storage game:lang shulker_death.yellow set value {message: "Le Shulker jaune a été tué !", warning: "Les joueurs Yellow ne peuvent plus réapparaître..."}

data modify storage game:lang errors.launch set value "Désolé, il n'y a pas assez de joueurs pour commencer la partie !"
data modify storage game:lang errors.shulker_block set value "Une erreur est survenue lors du placement du shulker!"
data modify storage game:lang errors.shulker_island set value "Vous ne pouvez pas placer le shulker hors de son île !"

data modify storage game:lang errors.shop_money set value "Vous n'avez pas assez d'argent pour acheter cet objet !"
data modify storage game:lang errors.shop_owned set value "Vous possédez déjà cet objet !"
data modify storage game:lang errors.upgrader_souls set value "Vous n'avez pas assez d'âmes pour cette amélioration !"
data modify storage game:lang errors.upgrader_maxed set value "Cette amélioration est déjà au maximum !"
data modify storage game:lang errors.upgrader_health set value "Votre shulker est déjà complètement soigné !"
data modify storage game:lang errors.upgrader_shulker set value "Vous ne pouvez pas soigner un shulker mort !"
data modify storage game:lang errors.upgrader_base set value "Vous ne pouvez pas acheter d'améliorations dans une base ennemie !"

data modify storage game:lang suicide append value ["", " a cramé lors de son entré dans l'atmosphère"]
data modify storage game:lang suicide append value ["", " s'est suicidé"]
data modify storage game:lang suicide append value ["", " est mort"]
data modify storage game:lang suicide append value ["", " a volé trop près du soleil"]
data modify storage game:lang suicide append value ["", " s'est perdu dans l'espace"]
data modify storage game:lang suicide append value ["", " a perdu la raison de vivre"]
data modify storage game:lang suicide append value ["", " a atteint le fond du fond"]
data modify storage game:lang suicide append value ["", " a tenté d'accéder à un univers parallèle"]
data modify storage game:lang suicide append value ["", " a essayé de nager dans le ciel"]
data modify storage game:lang killed_player set value ["", " s'est fait tué par ", ""]
data modify storage game:lang eliminated set value ["Désolé, ", " vous êtes éliminé !"]

data modify storage game:lang cost set value "Coût"
data modify storage game:lang bound set value "Permanent"
data modify storage game:lang maxed set value "Au max"
data modify storage game:lang merchant set value "Marchand de Ressources"

data modify storage game:lang soul set value "Âme"
data modify storage game:lang iron set value "Fer"
data modify storage game:lang gold set value "Or"
data modify storage game:lang crystal set value "Cristal"

data modify storage game:lang red_shulker set value "Shulker Rouge"
data modify storage game:lang blue_shulker set value "Shulker Bleu"
data modify storage game:lang green_shulker set value "Shulker Vert"
data modify storage game:lang yellow_shulker set value "Shulker Jaune"

data modify storage game:lang leave_team set value {name: "Quitter l'équipe", usage: "Clique droit"}

data modify storage game:lang fast_travel set value {name: "Déplacement Instantané", help: "Revenir instantanément à son shulker"}
data modify storage game:lang shulker_picker set value {name: "Attrape Shulker", help: "Capturer un shulker"}
data modify storage game:lang explosive_bottle set value {name: "Bouteille Explosive", help: "Explode any block"}

data modify storage game:lang enhanced_shulker set value {name: "Shulker Amélioré", help: "Près de son shulker"}
data modify storage game:lang improved_spawner set value {name: "Générateur Amélioré", help: "Vitesse améliorée"}
data modify storage game:lang reinforced_armor set value {name: "Armure Renforcée", help: Toutes les armures de l'équipe"}
data modify storage game:lang sharpened_sword set value {name: "Épée aiguisée", help: "Toutes les épée de l'équipe"}
data modify storage game:lang shulker_health set value {name: "Cabinet des Âmes", help: ["Soigne votre shulker","+ ❤ Point de Vie"]}

data modify storage game:lang shop set value {name: "Boutique d'Objets", help: "Cliquer pour acheter", usage: "Clique droit pour utiliser"}
data modify storage game:lang upgrader set value {name: "Améliorations", help: "Cliquer pour acheter", usage: "Clique droit pour utiliser"}

data modify storage game:lang translator set value "GreenLenux"
