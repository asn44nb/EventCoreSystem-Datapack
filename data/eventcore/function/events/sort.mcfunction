# event_queue'yu priority:"high" → normal sırasına göre yeniden sıralar.
# high olmayanlar sort_normal'e, high olanlar sort_high'a ayrılır.
# Sonuç: event_queue = [high'lar..., normallar...]
data modify storage eventcore:sys sort_high set value []
data modify storage eventcore:sys sort_normal set value []
execute if data storage eventcore:sys event_queue[0] run function eventcore:events/sort_step
data modify storage eventcore:sys event_queue set from storage eventcore:sys sort_high
execute if data storage eventcore:sys sort_normal[0] run function eventcore:events/sort_merge_step
data remove storage eventcore:sys sort_high
data remove storage eventcore:sys sort_normal
