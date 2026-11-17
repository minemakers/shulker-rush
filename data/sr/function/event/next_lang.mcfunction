data modify storage sr:core i18n append from storage sr:core i18n[0]
data remove storage sr:core i18n[0]

function sr:system/lang/reload with storage sr:core i18n[0]

advancement revoke @s only sr:next_lang
