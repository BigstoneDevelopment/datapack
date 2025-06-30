# Play sound
playsound minecraft:block.bamboo_wood.break ui @s

# Modify score
scoreboard players remove @s bs_components_page 6
execute if score @s bs_components_page < #0 consts run scoreboard players set @s bs_components_page 0

# Clear previous
item replace entity @s hotbar.1 with minecraft:air
item replace entity @s hotbar.2 with minecraft:air
item replace entity @s hotbar.3 with minecraft:air
item replace entity @s hotbar.4 with minecraft:air
item replace entity @s hotbar.5 with minecraft:air
item replace entity @s hotbar.6 with minecraft:air