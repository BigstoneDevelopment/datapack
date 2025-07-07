# Increase page max
scoreboard players add bs_max_page_number consts 1

$data modify storage bigstone_sandbox:components loaded append value { "id": "minecraft:player_head", "count": 1, components: { "minecraft:item_name": "component_bigstone_sandbox", "minecraft:max_stack_size": 1, "minecraft:attribute_modifiers": [{id:"block_interaction_range",type:"block_interaction_range",amount:-5,operation:"add_value",slot:"hand",display:{type:"hidden"}}], "minecraft:consumable": {consume_seconds:100000}, "minecraft:custom_data": {bs_structure:"$(structure_name)"}, "minecraft:item_model": "$(item_model)", "minecraft:custom_name": [{"text":"$(display_name)","italic":false,"color":"gold"}], "minecraft:lore": [[{"text":"$(description)","italic":false,"color":"gray"}],[{"text":"Made by $(author)","italic":false,"color":"dark_gray"}],"",$(inputs_and_outputs),"",[{"text":"This item is from Bigstone Sandbox","italic":false,"color":"dark_gray"}],"",[{"text":"ᴘʀᴇꜱꜱ ǫ/ꜰ ᴛᴏ ʀᴏᴛᴀᴛᴇ","color":"yellow"}],[{"text":"ᴘʀᴇꜱꜱ ʟᴍʙ ᴛᴏ ᴘʟᴀᴄᴇ","color":"yellow"}]] } }

# Reset storage
data remove storage bigstone_sandbox:components args

# Import msg
$tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Imported component: $(display_name)","color":"gray"}]