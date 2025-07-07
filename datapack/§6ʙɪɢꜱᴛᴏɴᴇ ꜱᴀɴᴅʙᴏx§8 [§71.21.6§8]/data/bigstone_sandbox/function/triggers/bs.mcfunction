# Run give function
function bigstone_sandbox:menu/item

# Print message
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"You have been given the Bigstone Sandbox menu. Check your inventory!","color":"gray"}]

# Reset trigger
scoreboard players reset @s bs
scoreboard players enable @s bs