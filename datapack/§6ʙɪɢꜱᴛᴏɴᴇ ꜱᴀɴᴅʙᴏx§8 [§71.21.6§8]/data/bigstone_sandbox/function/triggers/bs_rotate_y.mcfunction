# Toggle
execute if score @s bigstone_sandbox_enabled matches 1 run scoreboard players add @s bs_rotate_y_VAL 90
execute if score @s bigstone_sandbox_enabled matches 1 if score @s bs_rotate_y_VAL > bs_rotation_max consts run scoreboard players set @s bs_rotate_y_VAL 0

# Print message
execute if score @s bigstone_sandbox_enabled matches 1 run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Rotation around the x axis was set to ","color":"gray"},{"score":{"objective":"bs_rotate_y_VAL",name:"@s"},color:"yellow"},{"text":".",color:"gray"}]

# Reset trigger
scoreboard players reset @s bs_rotate_y
scoreboard players enable @s bs_rotate_y