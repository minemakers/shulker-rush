advancement revoke @s only game:next_lang

data modify storage game:core i18n append from storage game:core i18n[0]
data remove storage game:core i18n[0]

function #game:events/reload_lang
schedule function game:resources/views/screen/language 2t