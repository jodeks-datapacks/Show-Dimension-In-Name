team remove nether 
team remove overworld 
team remove end

team remove afk_overworld 
team remove afk_nether 
team remove afk_end 

tag @a remove ShowDimensionInName

scoreboard objectives remove name_color.jodek

advancement revoke @a only jodek:show_dim_in_name
advancement revoke @a only jodek:utility
advancement revoke @a only jodek:root

scoreboard players set &check_show_dim_in_name check.afk_announcer 0

scoreboard objectives remove help.sdin