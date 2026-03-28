# Copy current pixel
data modify storage show_dimension_in_name:image data.current.pixel_color set \
  from storage show_dimension_in_name:image data.current.image_data[0]
data modify storage show_dimension_in_name:image data.current.description_text set \
  from storage show_dimension_in_name:image data.current.description[0]

scoreboard players add $index.image_data show_dimension_in_name.image 1

# Calculate column
scoreboard players operation $index.column show_dimension_in_name.image = $index.image_data show_dimension_in_name.image
scoreboard players operation $index.column show_dimension_in_name.image %= $width show_dimension_in_name.image

# Calculate row
scoreboard players operation $index.row show_dimension_in_name.image = $index.image_data show_dimension_in_name.image
scoreboard players operation $index.row show_dimension_in_name.image /= $width show_dimension_in_name.image

# Append start spacing
execute if score $index.column show_dimension_in_name.image matches 1 run \
  function show_dimension_in_name:image/process/append/blank

# Append colored pixel
execute unless data storage show_dimension_in_name:image data.current{pixel_color: ''} run \
  function show_dimension_in_name:image/process/append/pixel
# Append background pixel
execute if data storage show_dimension_in_name:image data.current{pixel_color: ''} run \
  function show_dimension_in_name:image/process/append/background

# Append description
execute if score $index.column show_dimension_in_name.image matches 0 run \
    function show_dimension_in_name:image/process/image_end/description

# Remove first element from the image_data array
data remove storage show_dimension_in_name:image data.current.image_data[0]
# Loop over rows
execute if score $index.row show_dimension_in_name.image < $height show_dimension_in_name.image run \
  function show_dimension_in_name:image/process/loop_over_image_data
 