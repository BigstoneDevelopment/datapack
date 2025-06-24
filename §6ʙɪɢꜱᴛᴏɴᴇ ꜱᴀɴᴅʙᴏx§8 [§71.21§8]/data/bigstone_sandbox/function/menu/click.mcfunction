advancement revoke @s only bigstone_sandbox:hotbar_menu_click
execute store result score #this bs_hotbar.timestamp run time query gametime
scoreboard players add @s bs_hotbar.timestamp 1
execute unless score @s bs_hotbar.timestamp = #this bs_hotbar.timestamp run function bigstone_sandbox:commands/command with entity @s SelectedItem.components."minecraft:custom_data".hotbar
scoreboard players operation @s bs_hotbar.timestamp = #this bs_hotbar.timestamp