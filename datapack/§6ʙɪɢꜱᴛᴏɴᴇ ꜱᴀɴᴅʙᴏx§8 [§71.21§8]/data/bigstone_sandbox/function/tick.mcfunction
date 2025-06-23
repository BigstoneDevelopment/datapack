# Check for player joining
execute as @a unless score @s left matches 0 run function bigstone_sandbox:init/on_join

# Trigger commands
execute as @a[scores={bs=1..}] run function bigstone_sandbox:triggers/bs
execute as @a[scores={bigstone_sandbox=1..}] run function bigstone_sandbox:triggers/bigstone_sandbox
execute as @a[scores={bs_auto_exit=1..}] run function bigstone_sandbox:triggers/bs_auto_exit

# Fix moving items
execute as @a run function bigstone_sandbox:menu/item_moved