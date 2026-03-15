# func_queue[0]'ı alır, çalıştırır, kaldırır; kuyrukta eleman kaldıysa tekrar çağırır.
# Beklenen eleman formatı: {ns:"namespace",path:"fonksiyon/yolu"}
# command/function.mcfunction ile uyumludur: $function $(ns):$(path)
data modify storage eventcore:sys current_func set from storage eventcore:sys func_queue[0]
data remove storage eventcore:sys func_queue[0]
function eventcore:command/function with storage eventcore:sys current_func
data remove storage eventcore:sys current_func
execute if data storage eventcore:sys func_queue[0] run function eventcore:command/multi_func_run
