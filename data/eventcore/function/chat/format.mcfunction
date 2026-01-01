# Mute Sistemi
execute as @s[tag=muted,type=minecraft:player] run return fail


# Özel sohbet formatı
$tellraw @a [{"text":"[$(prefix)] ","color":"$(color)"},{"selector":"$(target)"},{"text":": "},{"text":"$(msg)","color":"white"}]
