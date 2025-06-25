# Toggle
scoreboard players add @s bs_rotate_y_VAL 90
execute if score @s bs_rotate_y_VAL > val bs_rotation_max run scoreboard players set @s bs_rotate_y_VAL 0

# Print message
title @s actionbar ["",{text:"⬅",bold:true,color:"gray"},{text:"   ʏ ᴀxɪꜱ",color:"dark_red"},{text:" ʀᴏᴛᴀᴛɪᴏɴ ᴛᴏ ꜱᴇᴛ ",color:"gray"},{score:{name:"@s",objective:"bs_rotate_y_VAL"},color:"yellow"},{text:" ᴅᴇɢ   ",color:"yellow"},{text:"⮕",bold:true,color:"gray"}]

# Kill item
kill @e[name="component_bigstone_sandbox"]

# Empty offhand
execute if items entity @s weapon.offhand minecraft:player_head[item_name="component_bigstone_sandbox"] run item replace entity @s weapon.offhand with air