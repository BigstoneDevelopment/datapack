# Handle hotbar data
data remove storage bigstone_sandbox:macro player
execute store result storage bigstone_sandbox:macro player.ID int 1 run scoreboard players get @s ID
function bigstone_sandbox:menu/load with storage bigstone_sandbox:macro player

# Play sound
playsound minecraft:entity.blaze.hurt ui @s

# Set enabled scoreboard
scoreboard players set @s bigstone_sandbox_enabled 0