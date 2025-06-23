# Run give function
#dialog show @s bigstone_sandbox:options
# Header
tellraw @s ["",{text:"\n\n\n\n\n                 Bigstone Sandbox Options",color:"yellow"},{text:"\n"},{text:"  ---------------------------------------",color:"dark_gray"},{text:"\n"}]

execute if score @s bs_info_dialog_on_join matches -1 run tellraw @s [{text:"    Open info dialog on join",color:"gray"},{text:"                [x]",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_info_dialog_on_join"}},{text:"\n"}]
execute if score @s bs_info_dialog_on_join matches 1 run tellraw @s [{text:"    Open info dialog on join",color:"gray"},{text:"                [✔]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger bs_info_dialog_on_join"}},{text:"\n"}]

execute if score @s bs_auto_exit_on_join matches -1 run tellraw @s [{text:"    Auto exit Sandbox on join",color:"gray"},{text:"              [x]",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_auto_exit_on_join"}},{text:"\n"}]
execute if score @s bs_auto_exit_on_join matches 1 run tellraw @s [{text:"    Auto exit Sandbox on join",color:"gray"},{text:"              [✔]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger bs_auto_exit_on_join"}},{text:"\n"}]

execute if score @s bs_invert_rotating matches -1 run tellraw @s [{text:"    Switch Q/F for rotating components",color:"gray"},{text:"    [x]",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_invert_rotating"}},{text:"\n"}]
execute if score @s bs_invert_rotating matches 1 run tellraw @s [{text:"    Switch Q/F for rotating components",color:"gray"},{text:"    [✔]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger bs_invert_rotating"}},{text:"\n"}]

execute if score @s bs_visual_component_outline matches -1 run tellraw @s [{text:"    Component placement area box",color:"gray"},{text:"         [x]",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_visual_component_outline"}},{text:"\n"}]
execute if score @s bs_visual_component_outline matches 1 run tellraw @s [{text:"    Component placement area box",color:"gray"},{text:"         [✔]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger bs_visual_component_outline"}},{text:"\n"}]

execute if score @s bs_change_page_on_hold matches -1 run tellraw @s [{text:"    Hold to switch component page",color:"gray"},{text:"         [x]",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_change_page_on_hold"}},{text:"\n"}]
execute if score @s bs_change_page_on_hold matches 1 run tellraw @s [{text:"    Hold to switch component page",color:"gray"},{text:"         [✔]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger bs_change_page_on_hold"}},{text:"\n"}]

execute if score @s bs_show_block_preview matches -1 run tellraw @s [{text:"    Transparent component preview",color:"gray"},{text:"       [x]",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_show_block_preview"}},{text:"\n"}]
execute if score @s bs_show_block_preview matches 1 run tellraw @s [{text:"    Transparent component preview",color:"gray"},{text:"       [✔]",bold:true,color:"green",click_event:{action:"run_command",command:"trigger bs_show_block_preview"}},{text:"\n"}]

tellraw @s ["",{text:"  ---------------------------------------",color:"dark_gray"},{text:"\n"}, {"text":"                        \u2191 ","color":"gray"},{"text":"\ua731\u1d04\u0280\u1d0f\u029f\u029f \u1d1c\u1d18 "},{"text":"\u2191","color":"gray"},{text:"\n\n"}]

# Reset trigger
scoreboard players reset @s bs_options
scoreboard players enable @s bs_options