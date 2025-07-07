# Run give function
#dialog show @s bigstone_sandbox:options
# Header
tellraw @s ["",{text:"\n\n\n\n\n               Bigstone Sandbox Options",color:"yellow"},{text:"\n"},{text:"  ---------------------------------------",color:"dark_gray"},{text:"\n"}]

execute if score @s bs_info_dialog_on_join_VAL matches -1 run tellraw @s [{text:"    [X]  ",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_info_dialog_on_join"}},{text:"Open info dialog on join",color:"gray",bold:false},{text:"\n"}]
execute if score @s bs_info_dialog_on_join_VAL matches 1 run tellraw @s [{text:"    [✔]  ",bold:true,color:"green",click_event:{action:"run_command",command:"trigger bs_info_dialog_on_join"}},{text:"Open info dialog on join",color:"gray",bold:false},{text:"\n"}]

execute if score @s bs_invert_rotating_VAL matches -1 run tellraw @s [{text:"    [X]  ",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_invert_rotating"}},{text:"Switch Q/F for rotating components",color:"gray",bold:false},{text:"\n"}]
execute if score @s bs_invert_rotating_VAL matches 1 run tellraw @s [{text:"    [✔]  ",bold:true,color:"green",click_event:{action:"run_command",command:"trigger bs_invert_rotating"}},{text:"Switch Q/F for rotating components",color:"gray",bold:false},{text:"\n"}]

execute if score @s bs_visual_component_outline_VAL matches -1 run tellraw @s [{text:"    [X]  ",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_visual_component_outline"}},{text:"Component placement area box",color:"gray",bold:false},{text:"\n"}]
execute if score @s bs_visual_component_outline_VAL matches 1 run tellraw @s [{text:"    [✔]  ",bold:true,color:"green",click_event:{action:"run_command",command:"trigger bs_visual_component_outline"}},{text:"Component placement area box",color:"gray",bold:false},{text:"\n"}]

execute if score @s bs_show_block_preview_VAL matches -1 run tellraw @s [{text:"    [X]  ",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_show_block_preview"}},{text:"Transparent component preview",color:"gray",bold:false},{text:"\n"}]
execute if score @s bs_show_block_preview_VAL matches 1 run tellraw @s [{text:"    [✔]  ",bold:true,color:"green",click_event:{action:"run_command",command:"trigger bs_show_block_preview"}},{text:"Transparent component preview",color:"gray",bold:false},{text:"\n"}]

tellraw @s ["",{text:"  ---------------------------------------",color:"dark_gray"},{text:"\n"}, {"text":"                       \u2191 ","color":"gray"},{"text":"\ua731\u1d04\u0280\u1d0f\u029f\u029f \u1d1c\u1d18 "},{"text":"\u2191","color":"gray"},{text:"\n\n"}]

# Reset trigger
scoreboard players reset @s bs_options
scoreboard players enable @s bs_options