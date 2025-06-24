function bigstone_sandbox:menu/clear

$data modify storage bigstone_sandbox:macro player.helmet set from storage bigstone_sandbox:database players[{bs_ID:$(bs_ID)}].helmet
function bigstone_sandbox:menu/load_helmet with storage bigstone_sandbox:macro player.helmet

$data modify storage bigstone_sandbox:macro player.hotbar set from storage bigstone_sandbox:database players[{bs_ID:$(bs_ID)}].hotbar
function bigstone_sandbox:menu/load_slot with storage bigstone_sandbox:macro player.hotbar[-1]