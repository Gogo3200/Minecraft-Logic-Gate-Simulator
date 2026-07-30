#toggle truth table. For both on and off states.

execute if block ~ ~ ~ gray_wool if entity @s[tag=on_0] run tag @s add state0
execute if block ~ ~ ~ gray_wool unless entity @s[tag=on_0] run tag @s add state1

execute if block ~ ~ ~ light_gray_wool if entity @s[tag=on_0] run tag @s add state1
execute if block ~ ~ ~ light_gray_wool unless entity @s[tag=on_0] run tag @s add state0

execute if block ~ ~ ~ light_gray_wool if entity @s[tag=state0] run setblock ~ ~ ~ gray_wool
execute if block ~ ~ ~ gray_wool if entity @s[tag=state1] run setblock ~ ~ ~ light_gray_wool

function logic_gates:wire/special_functions/not_block/gate_output

kill @s
