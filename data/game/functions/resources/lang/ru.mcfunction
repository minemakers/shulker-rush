data modify storage game:lang greetings set value "Добро пожаловать в"

data modify storage game:lang countdown.0 set value "Игра началась!"
data modify storage game:lang countdown.1 set value ["Начало через ", " секунд..."]
data modify storage game:lang countdown.2 set value ["Начало через ", " секунд..."]

data modify storage game:lang respawning.1 set value ["Возрождение через ", " секунд..."]
data modify storage game:lang respawning.2 set value ["Возрождение ", " секунд..."]

data modify storage game:lang pick_teams set value "Выберите команду для начала"

data modify storage game:lang contributor.keel set value "Лидер команды"
data modify storage game:lang contributor.aksiome set value "Дизайн игры и датапак"
data modify storage game:lang contributor.bulix set value "Строительство"
data modify storage game:lang contributor.shurik204 set value "Помощь и тестирование"
data modify storage game:lang contributor.greenlenux set value "Создатель трейлера"

data modify storage game:lang arena.grassy_islands set value "Травяные острова"
data modify storage game:lang arena.cloudy_gates set value "Облачные ворота"
data modify storage game:lang arena.mechanical_sky set value "Механическое небо"
data modify storage game:lang arena.teams.2 set value "2 команды"
data modify storage game:lang arena.teams.3 set value "3 команды"
data modify storage game:lang arena.teams.4 set value "4 команды"

data remove storage game:lang rules
data modify storage game:lang rules.objective append value [{text: "Задача состоит в убийстве"}]
data modify storage game:lang rules.objective append value [{strong: "Шалкера противоположной команды"}, {text: "."}]
data modify storage game:lang rules.objective append value [{text: "После его уничтожения противоположная"}]
data modify storage game:lang rules.objective append value [{strong: "команда больше не сможет возрождаться"}]
data modify storage game:lang rules.objective append value [{text: "и может быть побеждена."}]

data modify storage game:lang rules.spawners append value [{ref: 0}, {text: " и "}, {ref: 1}, {text: " появляются"}]
data modify storage game:lang rules.spawners append value [{text: "на острове каждой команды."}]
data modify storage game:lang rules.spawners append value [{text: "Генераторы "}, {ref: 2}, {"text":" можно найти на центральных островах."}]
data modify storage game:lang rules.spawners append value [{text: "Эти 3 предмета дают возможность"}]
data modify storage game:lang rules.spawners append value [{strong: "покупать предметы"}, {text: " в магазине."}]

data modify storage game:lang rules.upgrades append value [{text: "Убийство игрока временно"}]
data modify storage game:lang rules.upgrades append value [{strong: "подсвечивает Шалкер его команды"}]
data modify storage game:lang rules.upgrades append value [{text: "и даёт вам "}, {ref: 3}, {text: ","}]
data modify storage game:lang rules.upgrades append value [{text: "за которые можно"}]
data modify storage game:lang rules.upgrades append value [{strong: "прокачивать ваши способности"}, {text: "."}]

data modify storage game:lang rules.prompt set value {text: "Игровые правила", action: "показать", "hover": "Нажмите, чтобы посмотреть правила!"}
data modify storage game:lang stop.prompt set value {text: "Похоже кто-то вышел из игры и вы остались одни в команде. Хотите ли вы окончить игру?", action: "да", "hover": "Нажмите, чтобы закончить игру."}

data modify storage game:lang click_me set value "Кликните ПКМ"
data modify storage game:lang click_here set value "Кликните ПКМ"
data modify storage game:lang click_open set value "Нажмите, чтобы открыть"
data modify storage game:lang game_launcher set value "Начать игру"
data modify storage game:lang arena_picker set value "Сменить арену"
data modify storage game:lang lang_picker set value "Сменить язык"

data modify storage game:lang team_picker.red set value "Красная команда"
data modify storage game:lang team_picker.blue set value "Синяя команда"
data modify storage game:lang team_picker.green set value "Зелёная команда"
data modify storage game:lang team_picker.yellow set value "Жёлтая команда"
data modify storage game:lang team_picker.random set value "Случайная команда"
data modify storage game:lang team_picker.spectator set value "Наблюдать"

data modify storage game:lang join_team.red set value "Вы вошли в красную команду!"
data modify storage game:lang join_team.blue set value "Вы вошли в синюю команду!"
data modify storage game:lang join_team.green set value "Вы вошли в зелёную команду!"
data modify storage game:lang join_team.yellow set value "Вы вошли в жёлтую команду!"

data modify storage game:lang stats.kill set value ["Вы убили ", " игроков"]
data modify storage game:lang stats.death set value ["вы умерли ", " раз"]

data modify storage game:lang win.red set value {title: "Красная команда", subtitle: "выиграла игру!", message: "Красная команда выиграла игру"}
data modify storage game:lang win.blue set value {title: "Синяя команда", subtitle: "выиграла игру!", message: "Синяя команда выиграла игру"}
data modify storage game:lang win.green set value {title: "Зелёная команда", subtitle: "выиграла игру!", message: "Зелёная команда выиграла игру"}
data modify storage game:lang win.yellow set value {title: "Жёлтая команда", subtitle: "выиграла игру!", message: "Жёлтая команда выиграла игру"}

data modify storage game:lang shulker_death.red set value {message: "Красный шалкер был убит!", warning: "Красные игроки больше не могут возрождаться..."}
data modify storage game:lang shulker_death.blue set value {message: "Синий шалкер был убит!", warning: "Синие игроки больше не могут возрождаться..."}
data modify storage game:lang shulker_death.green set value {message: "Зелёный шалкер был убит!", warning: "Зелёные игроки больше не могут возрождаться..."}
data modify storage game:lang shulker_death.yellow set value {message: "Жёлтый шалкер был убит!", warning: "Жёлтые игроки больше не могут возрождаться..."}

data modify storage game:lang errors.launch set value "Извините, недостаточно игроков для начала игры!"
data modify storage game:lang errors.shulker_block set value "Ошибка установки Шалкера!"
data modify storage game:lang errors.shulker_island set value "Вы не можете установить шалкер вне своего острова!"
data modify storage game:lang errors.shop_money set value "У вас недостаточно ресурсов чтобы купить этот предмет!"
data modify storage game:lang errors.shop_owned set value "У вас уже есть этот предмет!"
data modify storage game:lang errors.upgrader_souls set value "У вашей команды недостаточно душ чтобы купить это улучшение!"
data modify storage game:lang errors.upgrader_maxed set value "Достигнут максимальный уровень!"
data modify storage game:lang errors.upgrader_health set value "Ваш Шалкер уже имеет максимум здоровья!"
data modify storage game:lang errors.upgrader_shulker set value "Вы не можете лечить мёртвый Шалкер!"
data modify storage game:lang errors.upgrader_base set value "Вы не можете покупать улучшения на вражеской базе!"

data remove storage game:lang suicide
data modify storage game:lang suicide append value ["", " сгорел при вхождении в атмосферу"]
data modify storage game:lang suicide append value ["", " самоубился"]
data modify storage game:lang suicide append value ["", " умер"]
data modify storage game:lang suicide append value ["", " подлетел слишком близко к солнцу"]
data modify storage game:lang suicide append value ["", " потерялся в космосе"]
data modify storage game:lang suicide append value ["", " потерял причину жить"]
data modify storage game:lang suicide append value ["", " достиг низа мира"]
data modify storage game:lang suicide append value ["", " попробовал попасть в парралелльную вселенную"]
data modify storage game:lang suicide append value ["", " попробовал поплыть по воздуху"]
data modify storage game:lang killed_player set value ["", " был убит игроком ", ""]
data modify storage game:lang eliminated set value ["Извините, ", " вы уничтожены!"]

data modify storage game:lang actionbar.souls set value "Души:"
data modify storage game:lang actionbar.kills set value "Убийств:"
data modify storage game:lang actionbar.deaths set value "Смертей:"

data modify storage game:lang cost set value "Стоимость"
data modify storage game:lang bound set value "Не теряется при смерти"
data modify storage game:lang maxed set value "Максимум"
data modify storage game:lang merchant set value "Торговец ресурсами"

data modify storage game:lang soul set value "Душа"
data modify storage game:lang iron set value "Железо"
data modify storage game:lang gold set value "Золото"
data modify storage game:lang crystal set value "Кристал"

data modify storage game:lang red_shulker set value "Красный Шалкер"
data modify storage game:lang blue_shulker set value "Синий Шалкер"
data modify storage game:lang green_shulker set value "Зелёный Шалкер"
data modify storage game:lang yellow_shulker set value "Жёлтый Шалкер"

data modify storage game:lang leave_team set value {name: "Выйти из команды", usage: "ПКМ"}

data modify storage game:lang fast_travel set value {name: "Возврат на остров", help: "Мгновенно возвращает к вашему Шалкеру"}
data modify storage game:lang shulker_picker set value {name: "Подборщик Шалкера", help: "Подберите Шалкер"}
data modify storage game:lang explosive_bottle set value {name: "Взрывная бутылка", help: "Взорвите любой блок"}

data modify storage game:lang enhanced_shulker set value {name: "Улучшение Шалкера", help: "Около вашего Шалкера"}
data modify storage game:lang improved_spawner set value {name: "Улучшенный генератор", help: "Увеличение скорости"}
data modify storage game:lang reinforced_armor set value {name: "Укрепление брони", help: "Всей брони команды"}
data modify storage game:lang sharpened_sword set value {name: "Заострённые мечи", help: "Все мечи команды"}
data modify storage game:lang shulker_health set value {name: "Аптечка с Душами", help: ["Исцелите ваш Шалкер","+ ❤ Очко здоровья"]}

data modify storage game:lang shop set value {name: "Магазин предметов", help: "Нажмите, чтобы купить", usage: "ПКМ чтобы открыть"}
data modify storage game:lang upgrader set value {name: "Улучшения", help: "Нажмите, чтобы купить", usage: "ПКМ чтобы открыть"}

data modify storage game:lang translator set value "VeryEvilHuman & Shurik204"
