# Check for player joining
execute as @a unless score @s bs_left matches 0 run function bigstone_sandbox:init/on_join

# Trigger commands
execute as @a[scores={bigstone_sandbox=1..}] run function bigstone_sandbox:triggers/bigstone_sandbox

execute as @a[scores={bs=1..}] run function bigstone_sandbox:triggers/bs
execute as @a[scores={bs_options=1..}] run function bigstone_sandbox:triggers/bs_options
execute as @a[scores={bs_rotate_x=1..}] run function bigstone_sandbox:triggers/bs_rotate_x
execute as @a[scores={bs_rotate_y=1..}] run function bigstone_sandbox:triggers/bs_rotate_y

execute as @a[scores={bs_info_dialog_on_join=1..}] run function bigstone_sandbox:triggers/bs_info_dialog_on_join
execute as @a[scores={bs_auto_exit_on_join=1..}] run function bigstone_sandbox:triggers/bs_auto_exit_on_join
execute as @a[scores={bs_invert_rotating=1..}] run function bigstone_sandbox:triggers/bs_invert_rotating
execute as @a[scores={bs_visual_component_outline=1..}] run function bigstone_sandbox:triggers/bs_visual_component_outline
execute as @a[scores={bs_change_page_on_hold=1..}] run function bigstone_sandbox:triggers/bs_change_page_on_hold
execute as @a[scores={bs_show_block_preview=1..}] run function bigstone_sandbox:triggers/bs_show_block_preview

# Rotating
execute as @a[scores={bigstone_sandbox_enabled=1}] if score @s bs_invert_rotating_VAL matches -1 if entity @e[name="component_bigstone_sandbox"] run function bigstone_sandbox:commands/rotate_x
execute as @a[scores={bigstone_sandbox_enabled=1}] if score @s bs_invert_rotating_VAL matches 1 if entity @e[name="component_bigstone_sandbox"] run function bigstone_sandbox:commands/rotate_y

execute as @a[scores={bigstone_sandbox_enabled=1}] if score @s bs_invert_rotating_VAL matches -1 if items entity @s weapon.offhand minecraft:player_head[item_name="component_bigstone_sandbox"] run function bigstone_sandbox:commands/rotate_y
execute as @a[scores={bigstone_sandbox_enabled=1}] if score @s bs_invert_rotating_VAL matches 1 if items entity @s weapon.offhand minecraft:player_head[item_name="component_bigstone_sandbox"] run function bigstone_sandbox:commands/rotate_x

# Fix moving items
execute as @a run function bigstone_sandbox:menu/item_moved