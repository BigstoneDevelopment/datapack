# Detect when holding item
execute as @a[nbt={SelectedItem:{id:"minecraft:redstone_lamp",count:1,components:{"minecraft:item_name":"bs_menu"}}}] run tag @s add bs_has_menu_item

# Remove tag when not holding
execute as @a[nbt=!{SelectedItem:{id:"minecraft:redstone_lamp",count:1,components:{"minecraft:item_name":"bs_menu"}}},tag=bs_has_menu_item] run clear @s *[minecraft:custom_data~{menu:{}}]
execute as @a[nbt=!{SelectedItem:{id:"minecraft:redstone_lamp",count:1,components:{"minecraft:item_name":"bs_menu"}}},tag=bs_has_menu_item] run tag @s remove bs_has_menu_item


# Handle removing minecart
execute as @e[type=minecraft:chest_minecart,tag=bs_menu_container] at @s unless entity @e[distance=..8,tag=bs_has_menu_item] run function bigstone_sandbox:menu/minecart/removecart

# Handle summoning minecart
execute as @a[tag=bs_has_menu_item] at @s anchored eyes unless entity @e[type=minecraft:chest_minecart,tag=bs_menu_container,distance=..8] run function bigstone_sandbox:menu/minecart/summoncart

# Minecart tick loop
execute as @a[tag=bs_has_menu_item] at @s anchored eyes run function bigstone_sandbox:menu/minecart/follow_player
execute as @e[type=minecraft:chest_minecart,tag=bs_menu_container] at @s run function bigstone_sandbox:menu/container/tick
execute as @a unless entity @e[type=minecraft:chest_minecart,tag=bs_menu_container,distance=..8,sort=nearest,limit=1] run function bigstone_sandbox:menu/minecart/enable_hoppers