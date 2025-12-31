summon minecraft:interaction ~ ~ ~ {Tags:["ec.init"],CustomName:{"text":" EC ","color":"green"}}
execute as @e[type=minecraft:interaction,tag=ec.init] at @s run say Loading...

# Vars. Ayarları Yükle
data modify storage eventcore:sys args.data set value {debug:true}

kill @e[type=minecraft:interaction,tag=ec.init]
