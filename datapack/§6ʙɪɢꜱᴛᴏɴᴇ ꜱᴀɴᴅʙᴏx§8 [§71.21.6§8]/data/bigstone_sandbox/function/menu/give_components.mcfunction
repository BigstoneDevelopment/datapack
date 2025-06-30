# Load new
data remove storage bigstone_sandbox:components_temp loaded
data modify storage bigstone_sandbox:components_temp loaded set from storage bigstone_sandbox:components loaded

$data modify storage bigstone_sandbox:components_temp loaded[$(Slot1)].Slot set value 1
$function bigstone_sandbox:menu/load_component with storage bigstone_sandbox:components_temp loaded[$(Slot1)]

$data modify storage bigstone_sandbox:components_temp loaded[$(Slot2)].Slot set value 2
$function bigstone_sandbox:menu/load_component with storage bigstone_sandbox:components_temp loaded[$(Slot2)]

$data modify storage bigstone_sandbox:components_temp loaded[$(Slot3)].Slot set value 3
$function bigstone_sandbox:menu/load_component with storage bigstone_sandbox:components_temp loaded[$(Slot3)]

$data modify storage bigstone_sandbox:components_temp loaded[$(Slot4)].Slot set value 4
$function bigstone_sandbox:menu/load_component with storage bigstone_sandbox:components_temp loaded[$(Slot4)]

$data modify storage bigstone_sandbox:components_temp loaded[$(Slot5)].Slot set value 5
$function bigstone_sandbox:menu/load_component with storage bigstone_sandbox:components_temp loaded[$(Slot5)]

$data modify storage bigstone_sandbox:components_temp loaded[$(Slot6)].Slot set value 6
$function bigstone_sandbox:menu/load_component with storage bigstone_sandbox:components_temp loaded[$(Slot6)]