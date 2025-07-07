$execute unless score val bs_page_slot_index > bs_max_page_number consts run loot replace entity @s container.$(Slot) loot {pools:[{rolls:1,entries:[{type:"minecraft:item",name:"$(id)",functions:[{function:"minecraft:set_count",count:$(count)},{function:"minecraft:set_components",components:$(components)}]}]}]}

scoreboard players add val bs_page_slot_index 1
execute unless score val bs_page_slot_index >= bs_max_page_number consts run data remove storage bigstone_sandbox:components_temp loaded[-1]
execute unless score val bs_page_slot_index >= bs_max_page_number consts store result storage bigstone_sandbox:components_temp loaded[-1].Slot int 1 run scoreboard players get val bs_page_slot_index
execute unless score val bs_page_slot_index >= bs_max_page_number consts run function bigstone_sandbox:menu/components/load with storage bigstone_sandbox:components_temp loaded[-1]