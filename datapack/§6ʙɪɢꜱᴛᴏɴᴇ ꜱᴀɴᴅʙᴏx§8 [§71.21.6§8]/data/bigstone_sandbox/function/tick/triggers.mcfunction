# Trigger commands
execute as @a[scores={bigstone_sandbox=1..}] run function bigstone_sandbox:triggers/bigstone_sandbox

execute as @a[scores={bs=1..}] run function bigstone_sandbox:triggers/bs
execute as @a[scores={bs_options=1..}] run function bigstone_sandbox:triggers/bs_options
execute as @a[scores={bs_rotate_x=1..}] run function bigstone_sandbox:triggers/bs_rotate_x
execute as @a[scores={bs_rotate_y=1..}] run function bigstone_sandbox:triggers/bs_rotate_y

execute as @a[scores={bs_info_dialog_on_join=1..}] run function bigstone_sandbox:triggers/bs_info_dialog_on_join
execute as @a[scores={bs_invert_rotating=1..}] run function bigstone_sandbox:triggers/bs_invert_rotating
execute as @a[scores={bs_visual_component_outline=1..}] run function bigstone_sandbox:triggers/bs_visual_component_outline
execute as @a[scores={bs_show_block_preview=1..}] run function bigstone_sandbox:triggers/bs_show_block_preview