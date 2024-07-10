tellraw @a ["",{"text":"Show Dimension In Name","color":"blue","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/show-dimension-in-name"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/show-dimension-in-name"}},{"text":" loaded - ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/show-dimension-in-name"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/show-dimension-in-name"}},{"text":"[1.21]","color":"green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/show-dimension-in-name"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/show-dimension-in-name"}},{"text":" ","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/show-dimension-in-name"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/show-dimension-in-name"}},{"text":"v.2.2.0","color":"dark_green","clickEvent":{"action":"open_url","value":"https://modrinth.com/datapack/show-dimension-in-name"},"hoverEvent":{"action":"show_text","contents":"modrinth.com/datapack/show-dimension-in-name"}}]

team add overworld

team add nether

team add end

team modify overworld nametagVisibility always
team modify nether nametagVisibility always
team modify end nametagVisibility always

team modify afk_overworld nametagVisibility always
team modify afk_nether nametagVisibility always
team modify afk_end nametagVisibility always


schedule function showdiminname:change_name_color 2s

schedule function showdiminname:tag_all_mobs 2s

# scoreboard for the name color change - is the same in every datapack that has something do to with the name color (e.g. invis player name or afk announcer)
scoreboard objectives add name_color.jodek dummy

execute as @a unless score &name_color_sdin_overworld name_color.jodek = &name_color_sdin_overworld name_color.jodek run scoreboard players set &name_color_sdin_overworld name_color.jodek 11
execute as @a unless score &name_color_sdin_nether name_color.jodek = &name_color_sdin_nether name_color.jodek run scoreboard players set &name_color_sdin_nether name_color.jodek 11
execute as @a unless score &name_color_sdin_end name_color.jodek = &name_color_sdin_end name_color.jodek run scoreboard players set &name_color_sdin_end name_color.jodek 11

execute as @a unless score &prefix_color_sdin_overworld name_color.jodek = &prefix_color_sdin_overworld name_color.jodek run scoreboard players set &prefix_color_sdin_overworld name_color.jodek 12
execute as @a unless score &prefix_color_sdin_nether name_color.jodek = &prefix_color_sdin_nether name_color.jodek run scoreboard players set &prefix_color_sdin_nether name_color.jodek 14
execute as @a unless score &prefix_color_sdin_end name_color.jodek = &prefix_color_sdin_end name_color.jodek run scoreboard players set &prefix_color_sdin_end name_color.jodek 8

# compatibility with afk announcer datapack
scoreboard players set &check_show_dim_in_name check.afk_announcer 1


scoreboard objectives add help.sdin trigger