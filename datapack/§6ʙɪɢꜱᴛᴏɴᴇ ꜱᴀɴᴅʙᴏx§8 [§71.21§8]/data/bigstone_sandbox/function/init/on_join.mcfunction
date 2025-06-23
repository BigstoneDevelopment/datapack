# Reset score
scoreboard players set @s left 0

# Show info dialog
dialog show @s bigstone_sandbox:info

# Play sound
playsound minecraft:block.amethyst_block.step ui @s

# Auto ui exit
execute if score @s bigstone_sandbox_enabled matches 1 if score @s bs_auto_exit_state matches 1 run tellraw @s [{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Auto exited Bigstone Sandbox mode.","color":"gray"}]
execute if score @s bigstone_sandbox_enabled matches 1 if score @s bs_auto_exit_state matches 1 run function bigstone_sandbox:commands/exit