#nor gate truth table

execute if entity @s[tag=in_1,tag=on_0] run tag @s add state1
execute if entity @s[tag=in_1,tag=on_1] run tag @s add state0

execute if entity @s[tag=in_2,tag=on_0] run tag @s add state1
execute if entity @s[tag=in_2,tag=on_1] run tag @s add state0
execute if entity @s[tag=in_2,tag=on_2] run tag @s add state0

execute if entity @s[tag=in_3,tag=on_0] run tag @s add state1
execute if entity @s[tag=in_3,tag=on_1] run tag @s add state0
execute if entity @s[tag=in_3,tag=on_2] run tag @s add state0
execute if entity @s[tag=in_3,tag=on_3] run tag @s add state0

function logic_gates:wire/special_functions/not_block/gate_output

kill @s
