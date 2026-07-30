#checks for the output wire. Along with the wire state from the gate.

execute if entity @s[tag=state1] if score show_wire debug matches 1 run function logic_gates:wire/check_for_output {state:"state1",invis:"false"}
execute if entity @s[tag=state0] if score show_wire debug matches 1 run function logic_gates:wire/check_for_output {state:"state0",invis:"false"}

execute if entity @s[tag=state1] unless score show_wire debug matches 1 run function logic_gates:wire/check_for_output {state:"state1",invis:"true"}
execute if entity @s[tag=state0] unless score show_wire debug matches 1 run function logic_gates:wire/check_for_output {state:"state0",invis:"true"}

