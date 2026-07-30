#lamp code. Acts like an xor for some reason--bug.

execute if entity @s[tag=on_0] run tag @s add state0
execute unless entity @s[tag=on_0] run tag @s add state1

execute if block ~ ~ ~ redstone_lamp[lit=true] if entity @s[tag=state0] run setblock ~ ~ ~ redstone_lamp[lit=false]
execute if block ~ ~ ~ redstone_lamp[lit=false] if entity @s[tag=state1] run setblock ~ ~ ~ redstone_lamp[lit=true]

function logic_gates:wire/special_functions/not_block/gate_output

kill @s
