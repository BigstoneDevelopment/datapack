# Reset score
scoreboard players set @s bs_left 0

# Show info dialog
execute if score @s bs_info_dialog_on_join_VAL matches 1 run dialog show @s bigstone_sandbox:info

# Play sound
execute if score @s bs_info_dialog_on_join_VAL matches 1 run playsound minecraft:block.amethyst_block.step ui @s