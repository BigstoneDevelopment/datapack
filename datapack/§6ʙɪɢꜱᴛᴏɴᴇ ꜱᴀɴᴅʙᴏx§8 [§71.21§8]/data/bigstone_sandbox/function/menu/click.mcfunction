advancement revoke @s only bigstone_sandbox:hotbar_menu_click
execute store result score #this hotbar.timestamp run time query gametime
scoreboard players add @s hotbar.timestamp 1
execute unless score @s hotbar.timestamp = #this hotbar.timestamp run function bigstone_sandbox:commands/command with entity @s SelectedItem.components."minecraft:custom_data".hotbar
scoreboard players operation @s hotbar.timestamp = #this hotbar.timestamp