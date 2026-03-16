# EventCore Ana Yönlendirici — Tekil + Çoklu + Config
# Kullanım: function eventcore:trigger {args:{...},events:[...],config:{...}}
# args:{} boş geçilebilir. events:[] boş geçilebilir. İkisi birden de olabilir.
# config:{} seçenekleri: delay:N, version_check:0b, as:"selector", at:"selector", silent:1b
# events[] içinde {type:"...",data:{...},priority:"high"} ile öncelik verilebilir.
$data modify storage eventcore:sys args set value $(args)
$data modify storage eventcore:sys event_queue set value $(events)
$data modify storage eventcore:sys config_call set value $(config)

# Versiyon kontrolü (config:{version_check:0b} ile devre dışı bırakılabilir)
execute unless data storage eventcore:sys config_call{version_check:0b} unless data storage eventcore:config {version:"2.4.0"} run tellraw @a [{"storage":"eventcore:config","nbt":"messages.err_prefix","color":"red","bold":true},{"text":" ","color":"white"},{"storage":"eventcore:config","nbt":"messages.err_version","color":"white"}]
execute unless data storage eventcore:sys config_call{version_check:0b} unless data storage eventcore:config {version:"2.4.0"} run return fail

# Geciktirme — config:{delay:N} varsa defer et
execute if data storage eventcore:sys config_call.delay run function eventcore:trigger/defer
execute if data storage eventcore:sys config_call.delay run return fail

# Max queue size kontrolü
execute if data storage eventcore:sys event_queue[0] run function eventcore:events/check_size with storage eventcore:config

# Priority sıralama — event_queue'da eleman varsa sırala
execute if data storage eventcore:sys event_queue[0] run function eventcore:events/sort

# Yürütme bağlamı — as+at / as / at / normal
execute if data storage eventcore:sys config_call.as if data storage eventcore:sys config_call.at run function eventcore:trigger/run_as_at with storage eventcore:sys config_call
execute if data storage eventcore:sys config_call.as unless data storage eventcore:sys config_call.at run function eventcore:trigger/run_as with storage eventcore:sys config_call
execute unless data storage eventcore:sys config_call.as if data storage eventcore:sys config_call.at run function eventcore:trigger/run_at with storage eventcore:sys config_call
execute unless data storage eventcore:sys config_call.as unless data storage eventcore:sys config_call.at run function eventcore:trigger/run_core

data remove storage eventcore:sys config_call
data remove storage eventcore:sys args
data remove storage eventcore:sys event_queue
