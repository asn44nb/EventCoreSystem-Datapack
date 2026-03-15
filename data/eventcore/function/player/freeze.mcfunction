# Oyuncuyu dondurma
$execute as @a[name=$(target),limit=1,tag=!ec.freezed] at @s run return run tag @s add ec.freezed

$execute as @s[name=$(target),limit=1,tag=ec.freezed] at @s run return run tag @s remove ec.freezed
