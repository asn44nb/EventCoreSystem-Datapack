# Broadcast için config değerlerini ve mesajı birleştirir.
# args.data.msg + eventcore:config broadcast.* → broadcast_args → messages/broadcast
data modify storage eventcore:sys broadcast_args.msg set from storage eventcore:sys args.data.msg
data modify storage eventcore:sys broadcast_args.prefix set from storage eventcore:config broadcast.prefix
data modify storage eventcore:sys broadcast_args.prefix_color set from storage eventcore:config broadcast.prefix_color
data modify storage eventcore:sys broadcast_args.msg_color set from storage eventcore:config broadcast.msg_color
function eventcore:messages/broadcast with storage eventcore:sys broadcast_args
data remove storage eventcore:sys broadcast_args
