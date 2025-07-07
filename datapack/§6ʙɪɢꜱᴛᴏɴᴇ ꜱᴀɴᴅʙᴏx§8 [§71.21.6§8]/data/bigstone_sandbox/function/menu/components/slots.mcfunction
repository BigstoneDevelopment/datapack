# Reset Storage
data remove storage bigstone_sandbox:components_slots slots

# Create temp score
scoreboard objectives add bs_page_number_temp dummy
execute store result score @s bs_page_number_temp run scoreboard players get @a[tag=bs_has_menu_item,distance=..8,sort=nearest,limit=1] bs_page_number

# create slots
execute store result storage bigstone_sandbox:components_slots slots.Slot0 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot1 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot2 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot3 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot4 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot5 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot6 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot7 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1


execute store result storage bigstone_sandbox:components_slots slots.Slot9 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot10 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot11 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot12 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot13 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot14 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot15 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot16 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1


execute store result storage bigstone_sandbox:components_slots slots.Slot18 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot19 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot20 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot21 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot22 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot23 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot24 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 1

execute store result storage bigstone_sandbox:components_slots slots.Slot25 int 1 run scoreboard players get @s bs_page_number_temp
scoreboard players add @s bs_page_number_temp 2

# remove temp score
scoreboard objectives remove bs_page_number_temp

# Load all components
function bigstone_sandbox:menu/components/load_all with storage bigstone_sandbox:components_slots slots