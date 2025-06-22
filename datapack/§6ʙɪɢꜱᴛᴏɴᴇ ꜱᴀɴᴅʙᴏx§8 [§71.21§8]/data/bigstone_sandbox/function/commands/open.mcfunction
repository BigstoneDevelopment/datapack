data remove storage bigstone_sandbox:macro player
execute store result storage bigstone_sandbox:macro player.ID int 1 run scoreboard players get @s ID
function bigstone_sandbox:hotbar/save with storage bigstone_sandbox:macro player
function bigstone_sandbox:hotbar/clear
item replace entity @s hotbar.0 with minecraft:music_disc_far[custom_data={hotbar:{command:"time set day"}},!jukebox_playable,consumable={consume_seconds:100000},item_model="minecraft:clock",item_name='"Set Time: Day"']
item replace entity @s hotbar.1 with minecraft:music_disc_far[custom_data={hotbar:{command:"weather clear"}},!jukebox_playable,consumable={consume_seconds:100000},item_model="minecraft:glass_bottle",item_name='"Weather: Clear"']
item replace entity @s hotbar.2 with minecraft:music_disc_far[custom_data={hotbar:{command:"weather thunder"}},!jukebox_playable,consumable={consume_seconds:100000},item_model="minecraft:lightning_rod",item_name='"Weather: Thunder"']
item replace entity @s hotbar.3 with minecraft:music_disc_far[custom_data={hotbar:{command:"effect give @s minecraft:night_vision infinite 0 true"}},!jukebox_playable,consumable={consume_seconds:100000},item_model="minecraft:golden_carrot",item_name='"Effect: Night Vision"']
item replace entity @s hotbar.4 with minecraft:music_disc_far[custom_data={hotbar:{command:"effect clear @s"}},!jukebox_playable,consumable={consume_seconds:100000},item_model="minecraft:milk_bucket",item_name='"Clear Effects"']
item replace entity @s hotbar.8 with minecraft:music_disc_far[custom_data={hotbar:{command:"function bigstone_sandbox:exit"}},!jukebox_playable,consumable={consume_seconds:100000},item_model="minecraft:barrier",item_name='"Exit"']