# runs the count function and the check_which_block function. Definitions are in their respective functions.

summon armor_stand ~ ~ ~ {Tags:[gate], Marker:true, Invisible:false}

kill @s

execute as @n[tag=gate,distance=0..,type=armor_stand] at @s run function logic_gates:wire/special_functions/not_block/gate_init/count

execute as @n[tag=gate,distance=0..,type=armor_stand] at @s run function logic_gates:wire/special_functions/not_block/check_which_block