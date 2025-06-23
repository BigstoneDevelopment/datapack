execute if score @s bs_auto_exit_state matches -1 run tellraw @s ["",{text:"[",color:"dark_gray"},{text:"ʙɪɢꜱᴛᴏɴᴇ ꜱᴀɴᴅʙᴏx",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Auto Exit Sandbox on Join",color:"gray"},{text:" [✓]",bold:true,color:"dark_green",click_event:{action:"run_command",command:"trigger bs_auto_exit"}}]
execute if score @s bs_auto_exit_state matches 1 run tellraw @p ["",{text:"[",color:"dark_gray"},{text:"ʙɪɢꜱᴛᴏɴᴇ ꜱᴀɴᴅʙᴏx",color:"gold"},{text:"] ",color:"dark_gray"},{text:"Auto Exit Sandbox on Join",color:"gray"},{text:" [X]",bold:true,color:"red",click_event:{action:"run_command",command:"trigger bs_auto_exit"}}]
scoreboard players operation @s bs_auto_exit_state *= @s bs_auto_exit_on

# Reset trigger
scoreboard players reset @s bs_auto_exit
scoreboard players enable @s bs_auto_exit