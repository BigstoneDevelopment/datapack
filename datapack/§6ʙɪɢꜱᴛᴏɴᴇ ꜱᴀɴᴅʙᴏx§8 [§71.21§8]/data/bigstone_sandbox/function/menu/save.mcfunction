data remove storage bigstone_sandbox:data inv
data modify storage bigstone_sandbox:data inv set from entity @s Inventory
data remove storage bigstone_sandbox:data hotbar
data modify storage bigstone_sandbox:data hotbar append from storage bigstone_sandbox:data inv[{Slot:0b}]
data modify storage bigstone_sandbox:data hotbar append from storage bigstone_sandbox:data inv[{Slot:1b}]
data modify storage bigstone_sandbox:data hotbar append from storage bigstone_sandbox:data inv[{Slot:2b}]
data modify storage bigstone_sandbox:data hotbar append from storage bigstone_sandbox:data inv[{Slot:3b}]
data modify storage bigstone_sandbox:data hotbar append from storage bigstone_sandbox:data inv[{Slot:4b}]
data modify storage bigstone_sandbox:data hotbar append from storage bigstone_sandbox:data inv[{Slot:5b}]
data modify storage bigstone_sandbox:data hotbar append from storage bigstone_sandbox:data inv[{Slot:6b}]
data modify storage bigstone_sandbox:data hotbar append from storage bigstone_sandbox:data inv[{Slot:7b}]
data modify storage bigstone_sandbox:data hotbar append from storage bigstone_sandbox:data inv[{Slot:8b}]
data modify storage bigstone_sandbox:data hotbar[].components merge value {}
$data remove storage bigstone_sandbox:database players[{ID:$(ID)}].hotbar 
$data modify storage bigstone_sandbox:database players[{ID:$(ID)}].hotbar set from storage bigstone_sandbox:data hotbar