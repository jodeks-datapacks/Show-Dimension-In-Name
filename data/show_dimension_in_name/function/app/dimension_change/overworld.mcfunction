advancement revoke @a only show_dimension_in_name:dimension_change_overworld

execute as @s[tag=!afkannouncer.afk] run team join overworld

execute as @s[tag=afkannouncer.afk] run team join afk_overworld

execute unless score &afk_announcer jodek.installed matches 1 run team join overworld @s