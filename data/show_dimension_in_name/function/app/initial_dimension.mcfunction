scoreboard players set @s sdin.check 1

execute as @a[tag=!afkannouncer.afk] if dimension minecraft:the_end run team join end

execute as @a[tag=afkannouncer.afk] if dimension minecraft:the_end run team join afk_end

execute as @a[tag=!afkannouncer.afk] if dimension minecraft:the_nether run team join nether

execute as @a[tag=afkannouncer.afk] if dimension minecraft:the_nether run team join afk_nether

execute as @a[tag=!afkannouncer.afk] if dimension minecraft:overworld run team join overworld

execute as @a[tag=afkannouncer.afk] if dimension minecraft:overworld run team join afk_overworld

execute unless score &afk_announcer jodek.installed matches 1 as @a if dimension minecraft:the_end run team join end @s
execute unless score &afk_announcer jodek.installed matches 1 as @a if dimension minecraft:the_nether run team join nether @s
execute unless score &afk_announcer jodek.installed matches 1 as @a if dimension minecraft:overworld run team join overworld @s