function bigstone_sandbox:menu/clear
$data modify storage bigstone_sandbox:macro player.hotbar set from storage bigstone_sandbox:database players[{ID:$(ID)}].hotbar
function bigstone_sandbox:menu/load_slot with storage bigstone_sandbox:macro player.hotbar[-1]