data remove storage bigstone_sandbox:macro player
execute store result storage bigstone_sandbox:macro player.ID int 1 run scoreboard players get @s ID
function bigstone_sandbox:hotbar/load with storage bigstone_sandbox:macro player