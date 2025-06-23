# Enable trigger commands
scoreboard players enable @s bs
scoreboard players enable @s bigstone_sandbox

# Enabled scoreboard
scoreboard players enable @s bigstone_sandbox_enabled
scoreboard players enable @s bs_auto_exit
scoreboard players set @s bs_auto_exit_state -1
scoreboard players set @s bs_auto_exit_on -1

# Add player to left scoreboard
scoreboard players enable @s left

# Hotbar scoreboard and storage
data remove storage hotbar_menu:macro player

execute unless score @s ID = @s ID store result score @s ID run scoreboard players add #new ID 1
execute store result storage hotbar_menu:macro player.ID int 1 run scoreboard players get @s ID

function bigstone_sandbox:init/init with storage hotbar_menu:macro player