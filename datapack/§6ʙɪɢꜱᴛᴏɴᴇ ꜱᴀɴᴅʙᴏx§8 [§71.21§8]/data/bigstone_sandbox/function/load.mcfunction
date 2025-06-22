# Loaded message
tellraw @a ["",{"text":"\n\n\n"},{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Bigstone Sandbox","color":"yellow","clickEvent":{"action":"open_url","value":"https://github.com/CrazyH2/Bigstone"}},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"A simple Bigstone editor","color":"gray"},{"text":"\n"},{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"@CrazyH2 - ","italic":true,"color":"gray"},{"text":"Click for github","italic":true,"color":"yellow","clickEvent":{"action":"open_url","value":"https://github.com/CrazyH2"}},{"text":"\n\n"},{"text":"[","color":"dark_gray"},{"text":"\u0299\u026a\u0262\ua731\u1d1b\u1d0f\u0274\u1d07 \ua731\u1d00\u0274\u1d05\u0299\u1d0fx","color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Use ","color":"gray"},{"text":"/trigger","color":"yellow"},{"text":" bs to get started!","color":"gray"},{"text":"\n\n "}]

# Triggers for custom commands
# Get Enable Bigstone Sandbox item
scoreboard objectives add bs trigger
# Info about this project
scoreboard objectives add bigstone_sandbox trigger

# Create hotbar scoreboards
scoreboard objectives add ID dummy
scoreboard objectives add hotbar.timestamp dummy