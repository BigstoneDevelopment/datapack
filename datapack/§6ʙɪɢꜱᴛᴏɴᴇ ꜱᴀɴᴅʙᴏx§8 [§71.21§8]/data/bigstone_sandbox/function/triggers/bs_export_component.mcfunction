# Exit mode
execute if score @s bigstone_sandbox_enabled matches 1 run function bigstone_sandbox:commands/exit

# Give item
give @s minecraft:writable_book[item_name="bookinput_bigstone_sandbox", max_stack_size=1, attribute_modifiers=[{id:"block_interaction_range",type:"block_interaction_range",amount:-5,operation:"add_value",slot:"hand",display:{type:"hidden"}}], item_model="name_tag", custom_name=[{"text":"ᴇɴᴛᴇʀ ᴄᴏᴍᴘᴏɴᴇɴᴛ ɪɴꜰᴏ","italic":false,"color":"gold"}],lore=[[{"text":"Enter component description inside book","italic":false,"color":"gray"}],[{"text":"and the component name in the book title.","italic":false,"color":"gray"}],"",[{"text":"This item is from Bigstone Sandbox","italic":false,"color":"dark_gray"}],"",[{"text":"ʀɪɢʜᴛ ᴄʟɪᴄᴋ ᴛᴏ ɪɴᴛᴇʀᴀᴄᴛ","color":"yellow"}]]]

# Give msg
tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"You have been given a nametag. Read its tooltip!","color":"gray"}]