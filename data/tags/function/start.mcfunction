summon minecraft:interaction ~ ~ ~ {Tags:["ec.init"],CustomName:{"text":" EC ","color":"green"}}
execute as @e[type=minecraft:interaction,tag=ec.init] at @s run say Loading...
execute unless data storage ec:debug {sound:1b} run data merge storage ec:debug {sound:1b}
kill @e[type=minecraft:interaction,tag=ec.init]
