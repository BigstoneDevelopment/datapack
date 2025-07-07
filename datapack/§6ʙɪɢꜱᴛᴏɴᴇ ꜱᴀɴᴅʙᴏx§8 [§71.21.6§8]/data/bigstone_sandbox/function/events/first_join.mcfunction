# Enable trigger commands
scoreboard players enable @s bs
scoreboard players enable @s bigstone_sandbox
scoreboard players enable @s bs_options
scoreboard players enable @s bs_rotate_x
scoreboard players enable @s bs_rotate_y

# Options
scoreboard players enable @s bs_info_dialog_on_join
scoreboard players enable @s bs_invert_rotating
scoreboard players enable @s bs_visual_component_outline
scoreboard players enable @s bs_show_block_preview
# Default values
scoreboard players set @s bs_info_dialog_on_join_VAL 1
scoreboard players set @s bs_invert_rotating_VAL -1
scoreboard players set @s bs_visual_component_outline_VAL 1
scoreboard players set @s bs_show_block_preview_VAL 1
# Rotate vals
scoreboard players set @s bs_rotate_x_VAL 0
scoreboard players set @s bs_rotate_y_VAL 0

# Container
scoreboard players set @s bs_page_number 0
scoreboard players set @s bs_catagory_number 0

# Add player to left scoreboard
scoreboard players enable @s bs_left