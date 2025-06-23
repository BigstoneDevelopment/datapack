# Handle storage
data remove storage bigstone_sandbox:macro player
execute store result storage bigstone_sandbox:macro player.ID int 1 run scoreboard players get @s ID
function bigstone_sandbox:menu/save with storage bigstone_sandbox:macro player
function bigstone_sandbox:menu/clear

# Play sound
playsound minecraft:entity.blaze.hurt ui @s

# Put items in hotbar
function bigstone_sandbox:menu/give_items

# Set enabled scoreboard
scoreboard players set @s bigstone_sandbox_enabled 1