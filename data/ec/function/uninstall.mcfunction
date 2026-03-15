# EventCore Kaldırıcı
# Kullanım: function ec:uninstall
data modify storage eventcore:config removed set value 1b
data remove storage eventcore:config version
data remove storage eventcore:config debug
data remove storage eventcore:config errors
data remove storage eventcore:config cmd
data remove storage eventcore:config broadcast
data remove storage eventcore:config on_load
data remove storage eventcore:sys args
data remove storage eventcore:sys event_queue
data remove storage eventcore:sys config_call
data remove storage eventcore:sys pending
data remove storage eventcore:sys broadcast_args
data remove storage eventcore:sys cmd_queue
data remove storage eventcore:sys func_queue
data remove storage eventcore:sys current_cmd
data remove storage eventcore:sys current_func
tellraw @a [{"text":"[EventCore] ","color":"red","bold":true},{"text":"Kaldırıldı. Scoreboard objective'lerini manuel sil.","color":"white"}]
