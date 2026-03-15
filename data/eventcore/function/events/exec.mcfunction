# Kuyruğun ilk eventini işler, kaldırır, sonra sıradaki için process'i çağırır.
# ÖNEMLI: dispatch args'ı okuduktan SONRA process çağrılır; iç içe çağrılar güvenlidir.
data modify storage eventcore:sys args set from storage eventcore:sys event_queue[0]
data remove storage eventcore:sys event_queue[0]
execute unless data storage eventcore:sys args.type if data storage eventcore:config errors{show:1b} run tellraw @a [{"text":"[HATA] ","color":"red","bold":true},{"text":"Event tipi eksik (events[])!","color":"white"}]
execute if data storage eventcore:sys args.type run function eventcore:internal/dispatch
function eventcore:events/process
data remove storage eventcore:sys args
