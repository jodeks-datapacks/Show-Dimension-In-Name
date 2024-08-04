execute as @a[tag=!afkannouncer.afk] at @s[type=!parrot,type=!wolf,type=!cat,type=!horse,type=!donkey,type=!llama,type=!mule] if dimension minecraft:overworld run team join overworld

execute as @a[tag=!afkannouncer.afk] at @s[type=!parrot,type=!wolf,type=!cat,type=!horse,type=!donkey,type=!llama,type=!mule] if dimension minecraft:the_nether run team join nether

execute as @a[tag=!afkannouncer.afk] at @s[type=!parrot,type=!wolf,type=!cat,type=!horse,type=!donkey,type=!llama,type=!mule] if dimension minecraft:the_end run team join end

execute as @a[tag=afkannouncer.afk] at @s[type=!parrot,type=!wolf,type=!cat,type=!horse,type=!donkey,type=!llama,type=!mule] if dimension minecraft:overworld run team join afk_overworld

execute as @a[tag=afkannouncer.afk] at @s[type=!parrot,type=!wolf,type=!cat,type=!horse,type=!donkey,type=!llama,type=!mule] if dimension minecraft:the_nether run team join afk_nether

execute as @a[tag=afkannouncer.afk] at @s[type=!parrot,type=!wolf,type=!cat,type=!horse,type=!donkey,type=!llama,type=!mule] if dimension minecraft:the_end run team join afk_end

scoreboard players enable @a help.sdin

execute as @a if score @s help.sdin matches 1 run function showdiminname:trigger_help




