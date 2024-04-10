execute as @a[tag=!afkannouncer.afk] at @s if dimension minecraft:overworld run team join overworld

execute as @a[tag=!afkannouncer.afk] at @s if dimension minecraft:the_nether run team join nether

execute as @a[tag=!afkannouncer.afk] at @s if dimension minecraft:the_end run team join end

execute as @a[tag=afkannouncer.afk] at @s if dimension minecraft:overworld run team join afk_overworld 

execute as @a[tag=afkannouncer.afk] at @s if dimension minecraft:the_nether run team join afk_nether

execute as @a[tag=afkannouncer.afk] at @s if dimension minecraft:the_end run team join afk_end