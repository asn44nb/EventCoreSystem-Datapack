# event_queue[0]'ı priority'e göre sort_high veya sort_normal'e taşır. Recursive.
execute if data storage eventcore:sys event_queue[0]{priority:"high"} run data modify storage eventcore:sys sort_high append from storage eventcore:sys event_queue[0]
execute unless data storage eventcore:sys event_queue[0]{priority:"high"} run data modify storage eventcore:sys sort_normal append from storage eventcore:sys event_queue[0]
data remove storage eventcore:sys event_queue[0]
execute if data storage eventcore:sys event_queue[0] run function eventcore:events/sort_step
