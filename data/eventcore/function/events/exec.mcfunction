# Kuyruğun ilk eventini işler, kaldırır, sonra sıradaki için process'i çağırır.
# ÖNEMLİ: dispatch args'ı okuduktan SONRA process çağrılır; iç içe çağrılar güvenlidir.
data modify storage eventcore:sys args set from storage eventcore:sys event_queue[0]
data remove storage eventcore:sys event_queue[0]
execute unless data storage eventcore:sys args.type if data storage eventcore:config errors{show:1b} run tellraw @a [{"storage":"eventcore:config","nbt":"messages.err_prefix","color":"red","bold":true},{"text":" ","color":"white"},{"storage":"eventcore:config","nbt":"messages.err_no_type","color":"white"}]
execute if data storage eventcore:sys args.type run function eventcore:internal/dispatch
function eventcore:events/process
data remove storage eventcore:sys args
