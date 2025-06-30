# Enable trigger commands
scoreboard players enable @s bs
scoreboard players enable @s bigstone_sandbox
scoreboard players enable @s bs_options
scoreboard players enable @s bs_rotate_x
scoreboard players enable @s bs_rotate_y

# Enabled scoreboard
scoreboard players enable @s bigstone_sandbox_enabled
# Options
scoreboard players enable @s bs_info_dialog_on_join
scoreboard players enable @s bs_auto_exit_on_join
scoreboard players enable @s bs_invert_rotating
scoreboard players enable @s bs_visual_component_outline
scoreboard players enable @s bs_change_page_on_hold
scoreboard players enable @s bs_show_block_preview
# Default values
scoreboard players set @s bs_info_dialog_on_join_VAL 1
scoreboard players set @s bs_auto_exit_on_join_VAL -1
scoreboard players set @s bs_invert_rotating_VAL -1
scoreboard players set @s bs_visual_component_outline_VAL 1
scoreboard players set @s bs_change_page_on_hold_VAL -1
scoreboard players set @s bs_show_block_preview_VAL 1
# Rotate vals
scoreboard players set @s bs_rotate_x_VAL 0
scoreboard players set @s bs_rotate_y_VAL 0
# Component stuff
scoreboard players set @s bs_components_page 0
scoreboard players set @s bs_components_page_slot 0

# Add player to left scoreboard
scoreboard players enable @s bs_left

# Hotbar scoreboard and storage
data remove storage bigstone_sandbox:macro player

execute unless score @s bs_ID = @s bs_ID store result score @s bs_ID run scoreboard players add #new bs_ID 1
execute store result storage bigstone_sandbox:macro player.bs_ID int 1 run scoreboard players get @s bs_ID

function bigstone_sandbox:init/init with storage bigstone_sandbox:macro player