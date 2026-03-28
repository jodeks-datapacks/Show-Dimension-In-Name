# Append blank
function show_dimension_in_name:image/process/append/blank

data modify storage show_dimension_in_name:image data.tellraw append \
  from storage show_dimension_in_name:image data.current.description_text

# Append blank
function show_dimension_in_name:image/process/append/blank

# Append line_break
execute unless score $index.image_data show_dimension_in_name.image = $length show_dimension_in_name.image \
  run function show_dimension_in_name:image/process/append/line_break

# Remove first element from the description
data remove storage show_dimension_in_name:image data.current.description[0]
 