# To change the color, just replace the color with the color you want
# You can also edit the text to whatever you want
# Colors available: black, dark_blue, dark_green, dark_aqua, dark_red, dark_purple, gold, gray, dark_gray, blue, green, aqua, red, light_purple, yellow, white

# Name color - default color of the name
team modify overworld color white
team modify nether color white
team modify end color white

# Standalone SDIN
team modify overworld prefix [{"text":"Overworld","color":"green"},{"text":" | ","color":"dark_gray"}]

team modify nether prefix [{"text":"Nether","color":"red"},{"text":" | ","color":"dark_gray"}]

team modify end prefix [{"text":"End","color":"dark_purple"},{"text":" | ","color":"dark_gray"}]

# Compatibility with AFK Announcer
team modify afk_overworld prefix [{"text":"Overworld","color":"green"},{"text":" | ","color":"dark_gray"}]

team modify afk_nether prefix [{"text":"Nether","color":"red"},{"text":" | ","color":"dark_gray"}]

team modify afk_end prefix [{"text":"End","color":"dark_purple"},{"text":" | ","color":"dark_gray"}]
