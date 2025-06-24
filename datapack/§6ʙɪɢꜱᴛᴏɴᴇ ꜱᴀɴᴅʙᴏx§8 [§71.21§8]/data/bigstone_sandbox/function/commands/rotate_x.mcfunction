# Toggle
scoreboard players add @s bs_rotate_x_VAL 90
execute if score @s bs_rotate_x_VAL > val bs_rotation_max run scoreboard players set @s bs_rotate_x_VAL 0

# Print message
title @a actionbar ["",{text:"⬅",bold:true,color:"gray"},{text:"   x ᴀxɪꜱ",color:"dark_aqua"},{text:" ʀᴏᴛᴀᴛɪᴏɴ ᴛᴏ ꜱᴇᴛ ",color:"gray"},{score:{name:"@s",objective:"bs_rotate_x_VAL"},color:"yellow"},{text:" ᴅᴇɢ   ",color:"yellow"},{text:"⮕",bold:true,color:"gray"}]

# Kill item
kill @e[name="component_bigstone_sandbox"]