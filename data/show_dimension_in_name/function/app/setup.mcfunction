scoreboard objectives add jodek.config dummy
execute unless score &show_dimension_in_name_load_message jodek.config = &show_dimension_in_name_load_message jodek.config run scoreboard players set &show_dimension_in_name_load_message jodek.config 1
execute unless score &show_dimension_in_name_advancements jodek.config = &show_dimension_in_name_advancements jodek.config run scoreboard players set &show_dimension_in_name_advancements jodek.config 1

scoreboard objectives add show_dimension_in_name.image dummy

scoreboard objectives add sdin.check dummy

team add overworld
team add nether
team add end

# Print the image
function show_dimension_in_name:config/image

function show_dimension_in_name:config/sdin_color

advancement revoke @a only show_dimension_in_name:dimension_change_end
advancement revoke @a only show_dimension_in_name:dimension_change_nether
advancement revoke @a only show_dimension_in_name:dimension_change_overworld