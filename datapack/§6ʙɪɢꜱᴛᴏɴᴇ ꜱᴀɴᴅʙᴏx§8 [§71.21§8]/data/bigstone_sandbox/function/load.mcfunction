# Loaded message
tellraw @a ["",{"text":"\n\n\n"},{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Bigstone Sandbox","color":"yellow",click_event:{"action":"open_url","url":"https://github.com/CrazyH2/Bigstone"}},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"A simple Bigstone editor","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"@CrazyH2 - ","italic":true,"color":"gray"},{"text":"Click for github","italic":true,"color":"yellow","click_event":{"action":"open_url","url":"https://github.com/CrazyH2"}},{"text":"\n\n"},{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Use ","color":"gray"},{"text":"/trigger bs","color":"yellow"},{"text":" to get started!","color":"gray"},{"text":"\n\n "}]

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
scoreboard objectives add bs_auto_exit_on_join_VAL dummy
scoreboard objectives add bs_invert_rotating_VAL dummy
scoreboard objectives add bs_visual_component_outline_VAL dummy
scoreboard objectives add bs_change_page_on_hold_VAL dummy
scoreboard objectives add bs_show_block_preview_VAL dummy

scoreboard objectives add bs_info_dialog_on_join trigger
scoreboard objectives add bs_auto_exit_on_join trigger
scoreboard objectives add bs_invert_rotating trigger
scoreboard objectives add bs_visual_component_outline trigger
scoreboard objectives add bs_change_page_on_hold trigger
scoreboard objectives add bs_show_block_preview trigger

# Create hotbar scoreboards
scoreboard objectives add bs_ID dummy
scoreboard objectives add bs_hotbar.timestamp dummy
scoreboard objectives add bigstone_sandbox_enabled dummy

# Consts
scoreboard objectives add bs_negative_one dummy
scoreboard players set val bs_negative_one -1

scoreboard objectives add bs_rotation_max dummy
scoreboard players set val bs_rotation_max 270