# Load new
# Set vaiables
scoreboard objectives add bs_page_slot_max dummy
scoreboard players set val bs_page_slot_max 7

scoreboard objectives add bs_page_slot_index dummy


# FIRST ROW
# Reset index
scoreboard players set val bs_page_slot_index 0

# Reset Storage
data remove storage bigstone_sandbox:components_temp loaded

# Fill slots
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot0)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot1)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot2)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot3)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot4)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot5)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot6)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot7)]

# Start row
execute store result storage bigstone_sandbox:components_temp loaded[-1].Slot int 1 run scoreboard players get val bs_page_slot_index
function bigstone_sandbox:menu/components/load with storage bigstone_sandbox:components_temp loaded[-1]


# SECOND ROW
# Reset index
scoreboard players set val bs_page_slot_index 9

# Reset Storage
data remove storage bigstone_sandbox:components_temp loaded

# Fill slots
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot9)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot10)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot11)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot12)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot13)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot14)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot15)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot16)]

# Start row
execute store result storage bigstone_sandbox:components_temp loaded[-1].Slot int 1 run scoreboard players get val bs_page_slot_index
function bigstone_sandbox:menu/components/load with storage bigstone_sandbox:components_temp loaded[-1]


# THIRD ROW
# Reset index
scoreboard players set val bs_page_slot_index 18

# Reset Storage
data remove storage bigstone_sandbox:components_temp loaded

# Fill slots
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot18)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot19)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot20)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot21)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot22)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot23)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot24)]
$data modify storage bigstone_sandbox:components_temp loaded append from storage bigstone_sandbox:components loaded[$(Slot25)]

# Start row
execute store result storage bigstone_sandbox:components_temp loaded[-1].Slot int 1 run scoreboard players get val bs_page_slot_index
function bigstone_sandbox:menu/components/load with storage bigstone_sandbox:components_temp loaded[-1]


# Cleanup
scoreboard objectives remove bs_page_slot_index
scoreboard objectives remove bs_page_slot_max
data remove storage bigstone_sandbox:components_temp loaded