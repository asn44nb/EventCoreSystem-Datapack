$execute as $(target) at @s run summon minecraft:interaction ~ ~ ~ {CustomName:$(name),Tags:["waypoint","waypoint_$(id)"],Marker:1}
$tellraw $(target) [{"text":"📍 Waypoint oluşturuldu: ","color":"green"},{"text":"$(id)","color":"aqua"}]
