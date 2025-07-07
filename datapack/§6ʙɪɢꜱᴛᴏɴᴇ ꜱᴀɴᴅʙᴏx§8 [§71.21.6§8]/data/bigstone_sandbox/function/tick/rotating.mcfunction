# Rotating
execute as @a if score @s bs_invert_rotating_VAL matches -1 if entity @e[type=item,name="component_bigstone_sandbox"] at @s run function bigstone_sandbox:structures/rotate_x
execute as @a if score @s bs_invert_rotating_VAL matches 1 if entity @e[type=item,name="component_bigstone_sandbox"] at @s run function bigstone_sandbox:structures/rotate_y

execute as @a if score @s bs_invert_rotating_VAL matches -1 if items entity @s weapon.offhand minecraft:player_head[item_name="component_bigstone_sandbox"] at @s run function bigstone_sandbox:structures/rotate_y
execute as @a if score @s bs_invert_rotating_VAL matches 1 if items entity @s weapon.offhand minecraft:player_head[item_name="component_bigstone_sandbox"] at @s run function bigstone_sandbox:structures/rotate_x