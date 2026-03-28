advancement revoke @a only show_dimension_in_name:dimension_change_end

execute as @s[tag=!afkannouncer.afk] run team join end

execute as @s[tag=afkannouncer.afk] run team join afk_end

execute unless score &afk_announcer jodek.installed matches 1 run team join end @s