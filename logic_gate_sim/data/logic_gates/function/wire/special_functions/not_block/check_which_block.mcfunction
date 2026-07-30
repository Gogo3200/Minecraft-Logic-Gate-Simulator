#checks for a certain block (i.e. lime wool for or gate) at current location and runs its function.

tag @s remove state0
tag @s remove state1

execute if block ~ ~ ~ light_blue_wool run return run function logic_gates:wire/special_functions/and
execute if block ~ ~ ~ lime_wool run return run function logic_gates:wire/special_functions/or
execute if block ~ ~ ~ blue_wool run return run function logic_gates:wire/special_functions/nand
execute if block ~ ~ ~ red_wool run return run function logic_gates:wire/special_functions/nor
execute if block ~ ~ ~ purple_wool run return run function logic_gates:wire/special_functions/xor
execute if block ~ ~ ~ magenta_wool run return run function logic_gates:wire/special_functions/xnor
execute if block ~ ~ ~ light_gray_wool run return run function logic_gates:wire/special_functions/toggle
execute if block ~ ~ ~ gray_wool run return run function logic_gates:wire/special_functions/toggle
execute if block ~ ~ ~ redstone_lamp run return run function logic_gates:wire/special_functions/lamp
kill @s