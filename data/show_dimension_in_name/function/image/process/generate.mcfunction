#> show_dimension_in_name:image/process/generate
#
# This function generates the image data.

data modify storage show_dimension_in_name:image data.current.image_data set from storage show_dimension_in_name:image data.image_data
data modify storage show_dimension_in_name:image data.current.description set from storage show_dimension_in_name:image data.description
data modify storage show_dimension_in_name:image data.current.pixel_character set from storage show_dimension_in_name:image data.pixel_character.pixel

# Reset index score
scoreboard players set $index.image_data show_dimension_in_name.image 0
# Set width
execute store result score $width show_dimension_in_name.image run data get storage show_dimension_in_name:image data.width
# Set height
execute store result score $height show_dimension_in_name.image run data get storage show_dimension_in_name:image data.height
# Set length
scoreboard players operation $length show_dimension_in_name.image = $width show_dimension_in_name.image
scoreboard players operation $length show_dimension_in_name.image *= $height show_dimension_in_name.image
# Clear remaining entries in tellraw
data remove storage show_dimension_in_name:image data.tellraw

# Add spacing on top
function show_dimension_in_name:image/process/append/line_break
# Loop over image data
function show_dimension_in_name:image/process/loop_over_image_data
# Add spacing on bottom
function show_dimension_in_name:image/process/append/line_break