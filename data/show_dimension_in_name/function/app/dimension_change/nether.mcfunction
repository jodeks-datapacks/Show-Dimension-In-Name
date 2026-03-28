advancement revoke @a only show_dimension_in_name:dimension_change_nether

execute as @s[tag=!afkannouncer.afk] run team join nether

execute as @s[tag=afkannouncer.afk] run team join afk_nether

execute unless score &afk_announcer jodek.installed matches 1 run team join nether @s