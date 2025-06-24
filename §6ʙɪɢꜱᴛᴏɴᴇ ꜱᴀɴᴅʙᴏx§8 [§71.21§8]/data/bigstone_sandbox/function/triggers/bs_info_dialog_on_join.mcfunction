# Toggle
scoreboard players operation @s bs_info_dialog_on_join_VAL *= val bs_negative_one

# New message
function bigstone_sandbox:triggers/bs_options

# Reset trigger
scoreboard players reset @s bs_info_dialog_on_join
scoreboard players enable @s bs_info_dialog_on_join