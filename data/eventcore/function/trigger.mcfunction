# EventCore Ana Yönlendirici
$data modify storage eventcore:sys args set value $(args)

execute unless data storage eventcore:sys args.type run tellraw @a [{"text":"[HATA] ","color":"red","bold":true},{"text":"Event tipi belirtilmedi!","color":"white"}]
execute unless data storage eventcore:sys args.type run return fail

# Mesaj Eventleri
execute if data storage eventcore:sys args{type:"broadcast"} run function eventcore:messages/broadcast with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"whisper"} run function eventcore:messages/whisper with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"title"} run function eventcore:messages/title with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"actionbar"} run function eventcore:messages/actionbar with storage eventcore:sys args.data

# Ses ve Efekt
execute if data storage eventcore:sys args{type:"playsound"} run function eventcore:sound/playsound with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"particle"} run function eventcore:sound/particle with storage eventcore:sys args.data

# Timer
execute if data storage eventcore:sys args{type:"delay"} run function eventcore:timer/delay with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"repeat"} run function eventcore:timer/repeat with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"stop"} run function eventcore:timer/stop with storage eventcore:sys args.data

# Entity
execute if data storage eventcore:sys args{type:"summon"} run function eventcore:entity/summon with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"remove"} run function eventcore:entity/remove with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"data_merge"} run function eventcore:entity/data_merge with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"modify"} run function eventcore:entity/modify with storage eventcore:sys args.data

# Bossbar
execute if data storage eventcore:sys args{type:"bossbar_new"} run function eventcore:bossbar/new with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"bossbar_set"} run function eventcore:bossbar/set with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"bossbar_del"} run function eventcore:bossbar/delete with storage eventcore:sys args.data

# Oyuncu
execute if data storage eventcore:sys args{type:"tp"} run function eventcore:player/teleport with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"gamemode"} run function eventcore:player/gamemode with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"kick"} run function eventcore:player/kick with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"freeze"} run function eventcore:player/freeze with storage eventcore:sys args.data

# Efektler
execute if data storage eventcore:sys args{type:"effect_add"} run function eventcore:effect/add with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"effect_clear"} run function eventcore:effect/clear with storage eventcore:sys args.data

# XP
execute if data storage eventcore:sys args{type:"xp"} run function eventcore:xp/add with storage eventcore:sys args.data

# Eşyalar
execute if data storage eventcore:sys args{type:"give_raw"} run function eventcore:item/give2 with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"give"} run function eventcore:item/give with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"clear"} run function eventcore:item/clear with storage eventcore:sys args.data

# Scoreboard
execute if data storage eventcore:sys args{type:"score_set"} run function eventcore:score/set with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"score_add"} run function eventcore:score/add with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"score_remove"} run function eventcore:score/remove with storage eventcore:sys args.data

# Komut
execute if data storage eventcore:sys args{type:"func"} run function eventcore:command/function with storage eventcore:sys args.data
execute if data storage eventcore:sys args{type:"cmd"} run function eventcore:command/run with storage eventcore:sys args.data

# Debug
execute if data storage eventcore:sys args.data{debug:true} run tellraw @a [{"text":"[DEBUG] ","color":"gray"},{"text":"Çalıştı:","color":"gold"}," ",{"storage":"eventcore:sys","nbt":"args.type","color":"green"}]

data remove storage eventcore:sys args



