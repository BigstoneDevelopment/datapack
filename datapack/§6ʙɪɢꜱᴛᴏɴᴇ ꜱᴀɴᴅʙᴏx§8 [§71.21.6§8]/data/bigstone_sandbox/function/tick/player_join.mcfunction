# Check for player joining
execute as @a unless score @s bs_left matches 0 run function bigstone_sandbox:events/on_join