# Toggle
scoreboard players add @s bs_rotate_x_VAL 90
execute if score @s bs_rotate_x_VAL > val bs_rotation_max run scoreboard players set @s bs_rotate_x_VAL 0

# Print message
#title @s subtitle {"text":"x ʀᴏᴛᴀᴛɪᴏɴ ᴄᴀɴ ʙʀᴇᴀᴋ ᴄᴏᴍᴘᴏɴᴇɴᴛꜱ","color":"red"}
#title @s title [""]

tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"X Rotation can break components.","color":"gray"}]

title @s actionbar ["",{text:"⬆",bold:true,color:"gray"},{text:"   x ᴀxɪꜱ",color:"dark_aqua"},{text:" ʀᴏᴛᴀᴛɪᴏɴ ᴛᴏ ꜱᴇᴛ ",color:"gray"},{score:{name:"@s",objective:"bs_rotate_x_VAL"},color:"yellow"},{text:" ᴅᴇɢ   ",color:"yellow"},{text:"⬇",bold:true,color:"gray"}]

# Kill item
kill @e[name="component_bigstone_sandbox"]

# Empty offhand
execute if items entity @s weapon.offhand minecraft:player_head[item_name="component_bigstone_sandbox"] run item replace entity @s weapon.offhand with air