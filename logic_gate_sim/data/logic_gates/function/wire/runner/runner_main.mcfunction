# main code for the wire. Please don't reference this; reference runner_init.

#edge case.
execute if block ~ ~ ~ air run return run kill @s

#looks for special wires at current block and executes function if found
execute if block ~ ~ ~ white_carpet run return run function logic_gates:wire/debug/split
execute if block ~ ~ ~ gray_carpet run return run function logic_gates:wire/debug/through

#looks for logic gates at current block and executes their function if found
execute if predicate logic_gates:blocks run return run function logic_gates:wire/special_functions/not_block/gate_init/gate_init

#else looks for wire at current block
execute if entity @s[tag=state1] if block ~ ~ ~ black_carpet run setblock ~ ~ ~ red_carpet
execute if entity @s[tag=state0] if block ~ ~ ~ red_carpet run setblock ~ ~ ~ black_carpet


#looks for next block, could be wires, gates, or special wires.
function logic_gates:wire/debug/check_and_tag


kill @s