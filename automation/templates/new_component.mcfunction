APPEND:
PATH: ../datapack/§6ʙɪɢꜱᴛᴏɴᴇ ꜱᴀɴᴅʙᴏx§8 [§71.21§8]/data/bigstone_sandbox/function/components/<structure_file_name>.mcfunction
data modify storage bigstone_sandbox:components args.structure_name set value "<structure_file_name>"
data modify storage bigstone_sandbox:components args.display_name set value "<structure_display_name>"
data modify storage bigstone_sandbox:components args.author set value "<structure_author>"
data modify storage bigstone_sandbox:components args.description set value "<structure_description>"
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value <ports>
data modify storage bigstone_sandbox:components args.item_model set value "<namespace>:<model>"
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args
