# Kaydedilmiş bir eventi çalıştır.
# Kullanım: {label:"my_event"}
$data modify storage eventcore:sys args set from storage eventcore:labels $(label)
execute if data storage eventcore:sys args.type run function eventcore:internal/dispatch
data remove storage eventcore:sys args
$execute unless data storage eventcore:sys config_call{silent:1b} run tellraw @a [{"text":"[EC] ","color":"#55FFFF","bold":true},{"text":"label.run","color":"#FFAA00"},{"text":"label=","color":"#AAAAAA"},{"text":"$(label)","color":"white"}]
