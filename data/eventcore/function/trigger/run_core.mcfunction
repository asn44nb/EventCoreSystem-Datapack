# Normal yürütme çekirdeği — eventcore:sys args ve event_queue zaten yazılı olmalı.
# run_as / run_at / run_as_at / run_pending tarafından da çağrılır.
execute unless data storage eventcore:sys args.type unless data storage eventcore:sys event_queue[0] unless data storage eventcore:sys config_call{silent:1b} if data storage eventcore:config errors{show:1b} run tellraw @a [{"text":"[HATA] ","color":"red","bold":true},{"text":"args ve events boş!","color":"white"}]
execute if data storage eventcore:sys args.type run function eventcore:internal/dispatch
execute if data storage eventcore:sys event_queue[0] run function eventcore:events/process
execute if data storage eventcore:config debug{sound:1b} run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1 1
