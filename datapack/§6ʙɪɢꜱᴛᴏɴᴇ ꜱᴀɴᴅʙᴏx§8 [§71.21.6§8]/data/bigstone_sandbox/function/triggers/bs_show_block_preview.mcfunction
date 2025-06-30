# Toggle
scoreboard players operation @s bs_show_block_preview_VAL *= bs_negative_one consts

# New message
function bigstone_sandbox:triggers/bs_options

# Reset trigger
scoreboard players reset @s bs_show_block_preview
scoreboard players enable @s bs_show_block_preview