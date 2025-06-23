function bigstone_sandbox:menu/clear
$data modify storage bigstone_sandbox:macro player.hotbar set from storage bigstone_sandbox:database players[{bs_ID:$(bs_ID)}].hotbar
function bigstone_sandbox:menu/load_slot with storage bigstone_sandbox:macro player.hotbar[-1]