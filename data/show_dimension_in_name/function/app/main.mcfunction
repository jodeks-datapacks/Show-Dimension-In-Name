execute as @a unless score @s sdin.check = @s sdin.check run function show_dimension_in_name:app/initial_dimension

execute as @a[scores={sdin.deaths=1..}] run function show_dimension_in_name:app/update_dimension_status