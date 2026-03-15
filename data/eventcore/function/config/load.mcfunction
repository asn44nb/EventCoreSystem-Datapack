# EventCore Config Yükleyici
# Sadece eksik olan bloklara default değer yazar — var olanların üstüne yazmaz.
# Versiyon her zaman üstüne yazılır — kullanıcı tarafından değiştirilemez.
data modify storage eventcore:config version set value "2.2.1"
execute unless data storage eventcore:config debug run data modify storage eventcore:config debug set value {sound:1b}
execute unless data storage eventcore:config errors run data modify storage eventcore:config errors set value {show:1b}
execute unless data storage eventcore:config cmd run data modify storage eventcore:config cmd set value {security:1b}
execute unless data storage eventcore:config broadcast run data modify storage eventcore:config broadcast set value {prefix:"[DUYURU]",prefix_color:"gold",msg_color:"yellow"}
# on_load: /reload sonrası otomatik çalıştırılacak fonksiyon (ns + path boşsa atlanır)
execute unless data storage eventcore:config on_load run data modify storage eventcore:config on_load set value {enabled:0b,ns:"eventcore",path:"version/announce"}
