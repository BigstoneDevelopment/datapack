# Toggle
scoreboard players operation @s bs_change_page_on_hold_VAL *= bs_negative_one consts

# New message
function bigstone_sandbox:triggers/bs_options

# Reset trigger
scoreboard players reset @s bs_change_page_on_hold
scoreboard players enable @s bs_change_page_on_hold