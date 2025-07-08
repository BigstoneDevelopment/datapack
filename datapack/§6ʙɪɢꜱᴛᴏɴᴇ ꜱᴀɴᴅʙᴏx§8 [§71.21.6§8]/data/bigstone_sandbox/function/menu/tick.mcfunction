# Detect when started holding item
execute if entity @s[predicate=bigstone_sandbox:menu/player_is_holding_menu_item,tag=!bs_has_menu_item] run function bigstone_sandbox:menu/minecart/initialize

# Remove tag when not holding
execute if entity @s[predicate=!bigstone_sandbox:menu/player_is_holding_menu_item,tag=bs_has_menu_item] run schedule function bigstone_sandbox:menu/container/clear 2t
execute if entity @s[predicate=!bigstone_sandbox:menu/player_is_holding_menu_item,tag=bs_has_menu_item] run tag @s remove bs_has_menu_item