# Toggle
scoreboard players add @s bs_rotate_y_VAL 90
execute if score @s bs_rotate_y_VAL > bs_rotation_max consts run scoreboard players set @s bs_rotate_y_VAL 0

# Play sound
playsound minecraft:block.note_block.basedrum ui @s

# Print message
title @s actionbar ["",{text:"⬅",bold:true,color:"gray"},{text:"   ʏ ᴀxɪꜱ",color:"dark_red"},{text:" ʀᴏᴛᴀᴛɪᴏɴ ᴛᴏ ꜱᴇᴛ ",color:"gray"},{score:{name:"@s",objective:"bs_rotate_y_VAL"},color:"yellow"},{text:" ᴅᴇɢ   ",color:"yellow"},{text:"⮕",bold:true,color:"gray"}]

# Spawn temp minecart
summon minecraft:chest_minecart ~ ~ ~ {DisplayState:{Name:"minecraft:structure_void"},NoGravity:true,Invulnerable:true,Tags:["bs_menu_player_cursor"],Silent:true}

# Store mainhand
execute if items entity @s weapon.mainhand * run item replace entity @e[type=minecraft:chest_minecart,tag=bs_menu_player_cursor,distance=..8,sort=nearest,limit=1] container.0 from entity @s weapon.mainhand

# Switch Item back
execute if items entity @s weapon.offhand minecraft:player_head[item_name="component_bigstone_sandbox"] run item replace entity @s weapon.mainhand from entity @s weapon.offhand

# Load offhand
execute if items entity @e[type=minecraft:chest_minecart,tag=bs_menu_player_cursor,distance=..8,sort=nearest,limit=1] container.0 * run item replace entity @s weapon.offhand from entity @e[type=minecraft:chest_minecart,tag=bs_menu_player_cursor,distance=..8,sort=nearest,limit=1] container.0
execute unless items entity @e[type=minecraft:chest_minecart,tag=bs_menu_player_cursor,distance=..8,sort=nearest,limit=1] container.0 * run item replace entity @s weapon.offhand with air

# Kill temp minecart entity
execute as @e[type=minecraft:chest_minecart,tag=bs_menu_player_cursor,distance=..8,sort=nearest,limit=1] at @s run function bigstone_sandbox:menu/minecart/removecart