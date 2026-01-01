# Waypoint'e ışınlanma
$execute as $(target) run tp @s @e[type=minecraft:interaction,tag=waypoint_$(id),limit=1]
$tellraw $(target) [{"text":"📍 Waypoint'e ışınlandınız!","color":"green"}]
