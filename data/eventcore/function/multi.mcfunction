# EventCore Çoklu Event Giriş Noktası
# Kullanım: function eventcore:multi {events:[{type:"...",data:{...}},{type:"...",data:{...}},...]}
# Eventler storage'a kuyruğa alınır ve sırayla işlenir.
$data modify storage eventcore:sys event_queue set value $(events)

# Versiyon güvenlik kontrolü
execute unless data storage eventcore:config {version:"2.2.0"} run tellraw @a [{"text":"[EventCore] ","color":"red","bold":true},{"text":"Sürüm uyumsuzluğu (beklenen: 2.2.0). /reload yapın.","color":"white"}]
execute unless data storage eventcore:config {version:"2.2.0"} run return fail

function eventcore:events/process
data remove storage eventcore:sys event_queue
