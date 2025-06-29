tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Cleaning up. Please wait...","color":"gray"}]

# Custom play join help message
scoreboard objectives remove bs_left

# Triggers for custom commands
# Get Enable Bigstone Sandbox item
scoreboard objectives remove bs
# Info about this project
scoreboard objectives remove bigstone_sandbox
# Rotating
scoreboard objectives remove bs_rotate_x
scoreboard objectives remove bs_rotate_y

scoreboard objectives remove bs_rotate_x_VAL
scoreboard objectives remove bs_rotate_y_VAL
# Options
scoreboard objectives remove bs_options

scoreboard objectives remove bs_info_dialog_on_join_VAL
scoreboard objectives remove bs_auto_exit_on_join_VAL
scoreboard objectives remove bs_invert_rotating_VAL
scoreboard objectives remove bs_visual_component_outline_VAL
scoreboard objectives remove bs_change_page_on_hold_VAL
scoreboard objectives remove bs_show_block_preview_VAL

scoreboard objectives remove bs_info_dialog_on_join
scoreboard objectives remove bs_auto_exit_on_join
scoreboard objectives remove bs_invert_rotating
scoreboard objectives remove bs_visual_component_outline
scoreboard objectives remove bs_change_page_on_hold
scoreboard objectives remove bs_show_block_preview

# Create hotbar scoreboards
scoreboard objectives remove bs_ID
scoreboard objectives remove bs_hotbar.timestamp
scoreboard objectives remove bigstone_sandbox_enabled

# Consts
scoreboard objectives remove bs_negative_one

scoreboard objectives remove bs_rotation_max

# Storage manipulation
data remove storage bigstone_sandbox:data helmet
data remove storage bigstone_sandbox:data hotbar
data remove storage bigstone_sandbox:data inv

data remove storage bigstone_sandbox:database players

data remove storage bigstone_sandbox:macro player

data remove storage bigstone_sandbox:components structures
data remove storage bigstone_sandbox:components loaded
data remove storage bigstone_sandbox:components args

advancement revoke @a only bigstone_sandbox:first_join

tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Done! You can remove the datapack now.","color":"gray"}]