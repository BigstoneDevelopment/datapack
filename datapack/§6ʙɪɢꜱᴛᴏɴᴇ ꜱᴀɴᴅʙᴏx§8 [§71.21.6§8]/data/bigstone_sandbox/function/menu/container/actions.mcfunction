# Kill dropped items
kill @e[type=minecraft:item,predicate=bigstone_sandbox:menu/is_menu_item,distance=..5]

# Detect item pickup
execute on passengers if items entity @s player.cursor *[minecraft:custom_data~{menu:{}}] run function bigstone_sandbox:menu/container/action

# Clear inv of items
execute on passengers run clear @s *[minecraft:custom_data~{menu:{}}]

# Reset Gui slots
data remove storage bigstone_sandbox:page_number_temp temp

execute store result score bs_page_number_temp consts run scoreboard players get @a[tag=bs_has_menu_item,distance=..8,sort=nearest,limit=1] bs_page_number

# Max
execute store result score bs_max_page_number_temp consts run scoreboard players get bs_max_page_number consts
scoreboard players operation bs_max_page_number_temp consts -= #1 consts
# Get remainder
execute store result score bs_max_page_number_remainder consts run scoreboard players get bs_max_page_number_temp consts
scoreboard players operation bs_max_page_number_remainder consts %= #24 consts
# Subraction and addiction
scoreboard players set bs_max_page_number_base consts 24
scoreboard players operation bs_max_page_number_base consts -= bs_max_page_number_remainder consts
scoreboard players operation bs_max_page_number_temp consts += bs_max_page_number_base consts

# Division
scoreboard players operation bs_page_number_temp consts /= #24 consts
scoreboard players operation bs_max_page_number_temp consts /= #24 consts

scoreboard players operation bs_page_number_temp consts += #1 consts

execute store result storage bigstone_sandbox:page_number_temp temp.current int 1 run scoreboard players get bs_page_number_temp consts
execute store result storage bigstone_sandbox:page_number_temp temp.max int 1 run scoreboard players get bs_max_page_number_temp consts

function bigstone_sandbox:menu/container/slots with storage bigstone_sandbox:page_number_temp temp

# Cleanup
scoreboard players reset bs_page_number_temp consts
scoreboard players reset bs_max_page_number_remainder consts
scoreboard players reset bs_max_page_number_temp consts
scoreboard players reset bs_max_page_number_base consts
data remove storage bigstone_sandbox:page_number_temp temp