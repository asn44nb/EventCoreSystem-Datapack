summon minecraft:interaction ~ ~ ~ {Tags:["ec.init"],CustomName:{"text":" EC ","color":"green"}}
execute as @e[type=minecraft:interaction,tag=ec.init] at @s run say Loading...

kill @e[type=minecraft:interaction,tag=ec.init]
