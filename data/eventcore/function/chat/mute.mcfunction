# Oyuncuyu susturma
$tag $(target) add muted
$execute if data storage eventcore:sys args.data{duration:true} run schedule function eventcore:chat/unmute $(duration)t
$tellraw $(target) [{"text":"🔇 Susturuldunuz!","color":"red"}]
