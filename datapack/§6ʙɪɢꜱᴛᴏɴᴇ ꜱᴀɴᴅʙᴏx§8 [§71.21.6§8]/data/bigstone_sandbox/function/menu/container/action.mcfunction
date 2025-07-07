# Play sound
playsound minecraft:block.bamboo_wood.break ui @s

# Spawn temp minecart
summon minecraft:chest_minecart ~ ~ ~ {DisplayState:{Name:"minecraft:structure_void"},NoGravity:true,Invulnerable:true,Tags:["bs_menu_player_cursor"],Silent:true}

# Storage manipulation
item replace entity @e[type=minecraft:chest_minecart,tag=bs_menu_player_cursor,distance=..8,sort=nearest,limit=1] container.0 from entity @s player.cursor

# Clear player pickup cursor
item replace entity @s player.cursor with minecraft:air

# Run action
function bigstone_sandbox:menu/actions/action with entity @e[type=minecraft:chest_minecart,tag=bs_menu_player_cursor,distance=..8,sort=nearest,limit=1] Items[0].components.minecraft:custom_data.menu

# Kill temp minecart entity
execute as @e[type=minecraft:chest_minecart,tag=bs_menu_player_cursor,distance=..8,sort=nearest,limit=1] at @s run function bigstone_sandbox:menu/minecart/removecart