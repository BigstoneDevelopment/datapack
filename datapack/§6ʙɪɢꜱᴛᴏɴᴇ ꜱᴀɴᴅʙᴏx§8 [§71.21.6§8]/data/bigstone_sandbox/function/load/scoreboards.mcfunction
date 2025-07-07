# Custom play join help message
scoreboard objectives add bs_left minecraft.custom:minecraft.leave_game

# Triggers for custom commands
# Get Enable Bigstone Sandbox item
scoreboard objectives add bs trigger
# Info about this project
scoreboard objectives add bigstone_sandbox trigger
# Rotating
scoreboard objectives add bs_rotate_x trigger
scoreboard objectives add bs_rotate_y trigger

scoreboard objectives add bs_rotate_x_VAL dummy
scoreboard objectives add bs_rotate_y_VAL dummy
# Options
scoreboard objectives add bs_options trigger

scoreboard objectives add bs_info_dialog_on_join_VAL dummy
scoreboard objectives add bs_invert_rotating_VAL dummy
scoreboard objectives add bs_visual_component_outline_VAL dummy
scoreboard objectives add bs_show_block_preview_VAL dummy

scoreboard objectives add bs_info_dialog_on_join trigger
scoreboard objectives add bs_invert_rotating trigger
scoreboard objectives add bs_visual_component_outline trigger
scoreboard objectives add bs_show_block_preview trigger

# Container
scoreboard objectives add bs_page_number dummy
scoreboard objectives add bs_catagory_number dummy

# Consts
scoreboard objectives add consts dummy
scoreboard players set bs_negative_one consts -1
scoreboard players set bs_rotation_max consts 270
scoreboard players set bs_max_page_number consts 0
scoreboard players set bs_min_page_number consts 0
scoreboard players set bs_max_catagory_number consts 0

scoreboard players set #24 consts 24
scoreboard players set #1 consts 1
scoreboard players set #10 consts 10
scoreboard players set #100 consts 100
scoreboard players set #1000 consts 1000