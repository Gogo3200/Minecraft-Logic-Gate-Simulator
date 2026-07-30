# moves the tracer one block in the direction its looking until it finds a lever/input. If not found, it sends an error message.

execute if score tracer_dist debug matches 10.. run return run function logic_gates:inputs/placement/not_found_error
execute positioned ~ ~2 ~ if predicate logic_gates:inputs if score show_input debug matches 1 run return run function logic_gates:inputs/placement/summon_lever_stand {invis:"false"}
execute positioned ~ ~2 ~ if predicate logic_gates:inputs unless score show_input debug matches 1 run return run function logic_gates:inputs/placement/summon_lever_stand {invis:"true"}
tp @s ^ ^ ^1
scoreboard players add tracer_dist debug 1
schedule function logic_gates:inputs/placement/tracer_loop_init 1t