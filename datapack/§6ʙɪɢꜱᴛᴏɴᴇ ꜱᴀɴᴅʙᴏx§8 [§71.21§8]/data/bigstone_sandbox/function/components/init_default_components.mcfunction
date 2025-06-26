data modify storage bigstone_sandbox:components args.structure_name set value "3_way_carrier"
data modify storage bigstone_sandbox:components args.display_name set value "3 Way Carrier"
data modify storage bigstone_sandbox:components args.author set value "HuckleTheDev"
data modify storage bigstone_sandbox:components args.description set value "Carries 3 Redstone lines in one component."
data modify storage bigstone_sandbox:components args.inputs_and_outputs set value {text:"IBIN",italic:true,color:"dark_gray"}
data modify storage bigstone_sandbox:components args.head_profile set value {id:[I;-2112095159,-481999156,-1240584981,-359157329],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDVkNzM0YzY0YjExZTBhYjZlYWU5NDNiZmViMDhlZTAyM2UxNjUyNzZlZjMyYjRiZmE2ZTAzZjQ4NjRkZmQ5MSJ9fX0="}]}
function bigstone_sandbox:util/import_component with storage bigstone_sandbox:components args